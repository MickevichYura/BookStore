package com.exposit.sjc.app.bookstore;

import com.exposit.sjc.app.repository.entity.UserEntity;
import com.exposit.sjc.app.repository.entity.validation.UserValidator;
import com.exposit.sjc.domain.model.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/signup")
public class SignupController {
    @Autowired
    private UserValidator signupValidator;
    protected static Logger logger = Logger.getLogger("controller");
    @RequestMapping(method = RequestMethod.GET)
    public String signup(ModelMap model) {

        UserEntity signupForm = new UserEntity();
        logger.debug("Received request to show add page");
        model.addAttribute("signupForm", signupForm);
        return "signup";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processSignup(User signupForm, BindingResult result,Model m) {
        logger.debug("Received request to show add page");
        signupValidator.validate(signupForm, result);
        if (result.hasErrors()) {
            return "signup";
        }
        m.addAttribute("message", "Successfully saved User!");
        return "signup-success";
    }
}
