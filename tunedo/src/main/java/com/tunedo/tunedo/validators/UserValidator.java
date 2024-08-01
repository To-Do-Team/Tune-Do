package com.tunedo.tunedo.validators;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tunedo.tunedo.models.Role;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.services.UserService;
import com.tunedo.tunedo.services.RoleService;

@Component
public class UserValidator implements Validator {
    private final UserService userService;
    private final RoleService roleService;

    public UserValidator(UserService userService, RoleService roleService) {
        this.userService = userService;
        this.roleService = roleService;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        
        assignUserRoles(user);

        if (userService.existsByEmail(user.getEmail())) {
            errors.rejectValue("email", "USER_EMAIL_ALREADY_REGISTERED");
        } else {
            if (passwordsMismatch(user)) {
                errors.rejectValue("passwordConfirmation", "USER_PASSWORDS_MISMATCH");
            }
        }
    }

    public boolean passwordsMismatch(User user) {
        return user.getPassword().equals(user.getPasswordConfirmation()) == false;
    }

    private void assignUserRoles(User user) {
        Set<Role> userRoles = new HashSet<>();
        Role role;
        role = roleService.findByName("ROLE_USER");
        userRoles.add(role);
        /* role = roleService.findByName("ROLE_PREMIUM");
        userRoles.add(role); */

        user.setRoles(userRoles);
    }
}
