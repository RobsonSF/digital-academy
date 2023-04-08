package com.fernandes.digitalacademy.resources.exceptions;

import com.fernandes.digitalacademy.services.exceptions.ResourceNotFoundException;
import jakarta.persistence.EntityNotFoundException;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import static org.springframework.http.HttpStatus.NOT_FOUND;

import java.time.Instant;

@ControllerAdvice
public class ResourceExceptionHandler {

    @ExceptionHandler(ResourceNotFoundException.class)
    ResponseEntity<StandardError> resourceNotFoundException(
            ResourceNotFoundException ex, HttpServletRequest request
    ){
        StandardError standardError = new StandardError();
        standardError
                .setTimestamp(Instant.now())
                .setStatus(NOT_FOUND.value())
                .setError("Resource not found")
                .setMessage(ex.getMessage())
                .setPath(request.getRequestURI());

        return ResponseEntity.status(NOT_FOUND).body(standardError);
    }

    @ExceptionHandler(EntityNotFoundException.class)
    ResponseEntity<StandardError> entityNotFoundException(
            EntityNotFoundException ex, HttpServletRequest request
    ) {
        StandardError standardError = new StandardError();
        standardError
                .setTimestamp(Instant.now())
                .setStatus(NOT_FOUND.value())
                .setError("id: Invalid")
                .setMessage("Entity not found")
                .setPath(request.getRequestURI());

        return ResponseEntity.status(NOT_FOUND).body(standardError);
    }
}
