const deleteTask= (taskID)=>{
    const task = document.getElementById(taskID);
    fetch('/tasks/'+taskID+'/delete')
    .then(
        task.remove()
    )
    .catch((error) => console.error('Error:', error));
};