package roboguice.inject;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import roboguice.util.Strings;

public final class Nullable {
    private Nullable() {
    }

    public static boolean notNullable(Field field) {
        return isNullable(field) ^ 1;
    }

    public static boolean isNullable(Field field) {
        for (Annotation annotationType : field.getAnnotations()) {
            if (Strings.equals("Nullable", annotationType.annotationType().getSimpleName())) {
                return true;
            }
        }
        return false;
    }
}
