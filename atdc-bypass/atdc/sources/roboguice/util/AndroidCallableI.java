package roboguice.util;

public interface AndroidCallableI<ResultT> {
    ResultT doInBackground() throws Exception;

    void onException(Exception exception);

    void onFinally();

    void onPreCall() throws Exception;

    void onSuccess(ResultT resultT);
}
