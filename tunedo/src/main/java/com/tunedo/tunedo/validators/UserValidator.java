package com.tunedo.tunedo.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.services.UserService;

@Component
public class UserValidator implements Validator {
    private final UserService userService;

    public UserValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        
        if (userService.existsByEmail(user.getEmail())) {
            errors.rejectValue("email", "USER_EMAIL_ALREADY_REGISTERED"); 
        }else{
            if (passwordsMismatch(user)) {
                errors.rejectValue("passwordConfirmation", "USER_PASSWORDS_MISMATCH");
            }
        }
    }

    public boolean passwordsMismatch(User user) {
    return user.getPassword().equals(user.getPasswordConfirmation()) == false;
    }
}
