package com.google.inject.internal;

import com.google.inject.Guice;
import com.google.inject.spi.Message;
import java.util.logging.Level;
import java.util.logging.Logger;

final class MessageProcessor extends AbstractProcessor {
    private static final Logger logger = Logger.getLogger(Guice.class.getName());

    MessageProcessor(Errors errors) {
        super(errors);
    }

    public Boolean visit(Message message) {
        if (message.getCause() != null) {
            String rootMessage = getRootMessage(message.getCause());
            Logger logger = logger;
            Level level = Level.INFO;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("An exception was caught and reported. Message: ");
            stringBuilder.append(rootMessage);
            logger.log(level, stringBuilder.toString(), message.getCause());
        }
        this.errors.addMessage(message);
        return Boolean.valueOf(true);
    }

    public static String getRootMessage(Throwable th) {
        Throwable cause = th.getCause();
        return cause == null ? th.toString() : getRootMessage(cause);
    }
}
