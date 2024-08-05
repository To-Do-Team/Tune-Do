const draggables = document.querySelectorAll(".task");
const droppables = document.querySelectorAll(".swim-lane");
let tasks;
document.addEventListener('DOMContentLoaded', function() {
    // Para hacer la comparación
    tasks= tasksData
    console.log(tasksData);
});
let allListTasks = null;
let bottomTask =null;
let topTask =null;
let previousBottomTask= null;
let newZone =null;
let previousZone =null;
draggables.forEach((task) =>{
    task.addEventListener("dragstart",(e)=>{
        task.classList.add("is-dragging");
        previousBottomTask=e.currentTarget.nextElementSibling;
        previousZone=e.target.parentElement.dataset.type;
    });
    task.addEventListener("dragend",()=>{
        task.classList.remove("is-dragging");
        if(bottomTask===previousBottomTask && newZone===previousZone && newZone!==null){
            return;
        }
        calculatePosition(task,topTask,bottomTask);
    })
});

droppables.forEach((zone) =>{
    zone.addEventListener("dragover",(e)=>{
        e.preventDefault();
        bottomTask = insertAboveTask(zone, e.clientY);
        const currentTask = document.querySelector(".is-dragging");
        if(!bottomTask){
            zone.appendChild(currentTask);
        }
        else{
            zone.insertBefore(currentTask,bottomTask,zone);
        }
        setBottomTopTasks(bottomTask, allListTasks);
    });
    zone.querySelectorAll(".task");
});

const insertAboveTask = (zone,mouseY)=>{
    const elements= zone.querySelectorAll(".task:not(.is-dragging)");
    let closestTask= null;
    let closestOffset = Number.NEGATIVE_INFINITY;
    
    elements.forEach((task)=>{
        const {top} = task.getBoundingClientRect();

        const offset = mouseY - top;

        if(offset <0 && offset > closestOffset){
            closestOffset = offset;
            closestTask=task;
        }
    });
    allListTasks= [...elements];
    newZone=zone.dataset.type;
    //console.log("NUEVA ",newZone);
    return closestTask;
};

const setBottomTopTasks = (closestTask,elements)=>{
    bottomTask=closestTask;
    if(elements.length<=0){
        topTask=null;
        bottomTask=null;
        //console.log("no hay elementos");
        return
    }
    const index =elements.indexOf(closestTask);
    //console.log("indice ",index);
    if(bottomTask==null && index<0){
        topTask=elements[elements.length -1];
        //console.log("lo puso al ultimo");
        return
    }else if(index>=1){
        topTask=elements[index-1];
        //console.log("lo puso en medio");
        return
    }
        topTask=null;
        //console.log("lo puso al principio");
};

const changePosition= (task,position)=>{
    task.dataset.pos=position;
    const editTask = {
        id: task.id,
        position: position,
        type: newZone
    };
    fetch('/tasks/'+task.id+'/edit', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(editTask)
    })
    .then(response => response.json())
    .then(data => 
        console.log(data)
        //tasks[data.type][data.id].position=data.position
    )
    .catch((error) => console.error('Error:', error));
};

const changeStatus= (taskID,status)=>{
    const task=document.getElementById("dropdownHoverButton-"+taskID);
    const modal=document.getElementById("status-"+taskID);
    const editTask = {
        id: taskID,
        status: status
    };
    fetch('/tasks/'+taskID+'/edit', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(editTask)
    })
    .then(response => response.json())
    .then(data => {
        task.childNodes[0].textContent=data.statusDescription;
        modal.textContent="Estado de la tarea: "+data.statusDescription;
        const index = tasks[data.type].find(ele => ele.id===data.id);
        index.status = data.status;
        index.statusDescription = data.statusDescription;
    }
    )
    .catch((error) => console.error('Error:', error));
};

const calculatePosition = (task,topTask,bottomTask)=>{
    const indexStep = 65536 //2^16
    let position =0;
    if(topTask !== null || bottomTask !==null){//si no es la unica tarea: 
        if(topTask===null){//esta primero?
            position =  parseFloat(bottomTask.dataset.pos)/2;
        }
        else if(bottomTask ===null){
            position = parseFloat(topTask.dataset.pos) +indexStep;
        }
        else{
            position =parseFloat(topTask.dataset.pos) + parseFloat(bottomTask.dataset.pos);
            position/=2;
        }
    }
    else{
        position=indexStep;
    }
    changePosition(task, position);
    previousZone=null;
    topTask=null;
    bottomTask=null;
};