package com.fernandes.digitalacademy.services.exceptions;

import java.io.Serial;

public class ResourceNotFoundException extends NoStackTraceException{

    @Serial
    private static final long serialVersionUID = 1L;
    public ResourceNotFoundException(String msg) {
        super(msg);
    }

}
