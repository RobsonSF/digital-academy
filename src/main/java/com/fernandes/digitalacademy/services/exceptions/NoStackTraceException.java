package com.fernandes.digitalacademy.services.exceptions;

import java.io.Serial;

public class NoStackTraceException extends RuntimeException{

    @Serial
    private static final long serialVersionUID = 1L;
    public NoStackTraceException(String msg) {
        super(msg, null, true, false);
    }
}
