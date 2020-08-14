package by.barca.electricstore.web.controller;

import by.barca.electricstore.common.domain.User;
import by.barca.electricstore.common.service.UserService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.lang.model.type.ErrorType;
import java.util.Optional;

@RestController
@RequestMapping("/user")
public class UserController {

    private final UserService service;

    @Autowired
    public UserController(UserService service) {
        this.service = service;
    }

    @ApiOperation(value = "Create user")
    @ApiResponses({
            @ApiResponse(code = 201, message = "Successful user creation"),
            @ApiResponse(code = 500, message = "Server error")
    })
    @PostMapping
    public ResponseEntity<User> save(@RequestBody User user) {
        try {
            User u = service.save(user);
            return new ResponseEntity<>(u, HttpStatus.CREATED);
        }catch(Exception e){
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @ApiOperation(value = "Update user")
    @ApiResponses({
            @ApiResponse(code = 200, message = "Successful user update"),
            @ApiResponse(code = 500, message = "Server error")
    })
    @PutMapping("/{id}")
    public User update(@PathVariable Long id, @RequestBody User user) {

        Optional<User> u = service.findOne(id);

        if(!u.isPresent()) {
            throw new IllegalStateException("No user found with id = " + id);
        }
        user.setId(id);
        return service.save(user);

    }

    @ApiOperation(value = "Delete user")
    @ApiResponses({
            @ApiResponse(code = 200, message = "Successful user deletion"),
            @ApiResponse(code = 500, message = "Server error")
    })
    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {

        service.delete(id);

    }

}
