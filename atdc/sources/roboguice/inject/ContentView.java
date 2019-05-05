package roboguice.inject;

import com.google.inject.BindingAnnotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.TYPE})
@BindingAnnotation
@Retention(RetentionPolicy.RUNTIME)
public @interface ContentView {
    int value();
}
