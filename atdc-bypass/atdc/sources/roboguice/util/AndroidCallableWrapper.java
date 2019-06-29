package roboguice.util;

import android.os.Handler;
import android.os.Looper;
import edu.umd.cs.findbugs.annotations.SuppressWarnings;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;

public class AndroidCallableWrapper<ResultT> implements Runnable {
    static HashMap<Class<? extends AndroidCallableI<?>>, Boolean> isPreCallOverriddenMap = new HashMap();
    protected AndroidCallableI<ResultT> delegate;
    protected Handler handler;
    protected StackTraceElement[] launchLocation;

    @SuppressWarnings({"MALICIOUS_CODE"})
    public AndroidCallableWrapper(Handler handler, AndroidCallableI<ResultT> androidCallableI, StackTraceElement[] stackTraceElementArr) {
        this.delegate = androidCallableI;
        this.launchLocation = stackTraceElementArr;
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        this.handler = handler;
    }

    public void run() {
        Exception exception = null;
        Exception e;
        try {
            if (isPreCallOverriden(this.delegate.getClass())) {
                beforeCall();
            }
            e = doDoInBackgroundThread();
        } catch (Exception e2) {
            e = e2;
        } finally {
            exception = 
/*
Method generation error in method: roboguice.util.AndroidCallableWrapper.run():void, dex: classes2.dex
jadx.core.utils.exceptions.CodegenException: Error generate insn: ?: MERGE  (r0_1 'exception' java.lang.Exception) = (r0_0 'exception' java.lang.Exception), (r0_3 'exception' java.lang.Exception) in method: roboguice.util.AndroidCallableWrapper.run():void, dex: classes2.dex
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:228)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:205)
	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:102)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:52)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:95)
	at jadx.core.codegen.RegionGen.makeTryCatch(RegionGen.java:300)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:65)
	at jadx.core.codegen.RegionGen.makeSimpleRegion(RegionGen.java:89)
	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:55)
	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:183)
	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:321)
	at jadx.core.codegen.ClassGen.addMethods(ClassGen.java:259)
	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:221)
	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:111)
	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:77)
	at jadx.core.codegen.CodeGen.visit(CodeGen.java:10)
	at jadx.core.ProcessClass.process(ProcessClass.java:38)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
Caused by: jadx.core.utils.exceptions.CodegenException: MERGE can be used only in fallback mode
	at jadx.core.codegen.InsnGen.fallbackOnlyInsn(InsnGen.java:539)
	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:511)
	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:222)
	... 21 more

*/

    /* Access modifiers changed, original: 0000 */
    public void beforeCall() throws Exception {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final Exception[] exceptionArr = new Exception[1];
        this.handler.post(new Runnable() {
            public void run() {
                try {
                    new Callable<Object>() {
                        public Object call() throws Exception {
                            AndroidCallableWrapper.this.doOnPreCall();
                            return null;
                        }
                    }.call();
                } catch (Exception e) {
                    exceptionArr[0] = e;
                } catch (Throwable th) {
                    countDownLatch.countDown();
                }
                countDownLatch.countDown();
            }
        });
        countDownLatch.await();
        if (exceptionArr[0] != null) {
            throw exceptionArr[0];
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void afterCall(final ResultT resultT, final Exception exception) {
        this.handler.post(new Runnable() {
            public void run() {
                try {
                    if (exception != null) {
                        if (AndroidCallableWrapper.this.launchLocation != null) {
                            StackTraceElement[] stackTrace = exception.getStackTrace();
                            StackTraceElement[] stackTraceElementArr = new StackTraceElement[(stackTrace.length + AndroidCallableWrapper.this.launchLocation.length)];
                            System.arraycopy(stackTrace, 0, stackTraceElementArr, 0, stackTrace.length);
                            System.arraycopy(AndroidCallableWrapper.this.launchLocation, 0, stackTraceElementArr, stackTrace.length, AndroidCallableWrapper.this.launchLocation.length);
                            exception.setStackTrace(stackTraceElementArr);
                        }
                        AndroidCallableWrapper.this.doOnException(exception);
                    } else {
                        AndroidCallableWrapper.this.doOnSuccess(resultT);
                    }
                    AndroidCallableWrapper.this.doOnFinally();
                } catch (Throwable th) {
                    AndroidCallableWrapper.this.doOnFinally();
                }
            }
        });
    }

    /* Access modifiers changed, original: protected */
    public void doOnPreCall() throws Exception {
        this.delegate.onPreCall();
    }

    /* Access modifiers changed, original: protected */
    public ResultT doDoInBackgroundThread() throws Exception {
        return this.delegate.doInBackground();
    }

    /* Access modifiers changed, original: protected */
    public void doOnSuccess(ResultT resultT) {
        this.delegate.onSuccess(resultT);
    }

    /* Access modifiers changed, original: protected */
    public void doOnException(Exception exception) {
        this.delegate.onException(exception);
    }

    /* Access modifiers changed, original: protected */
    public void doOnFinally() {
        this.delegate.onFinally();
    }

    static boolean isPreCallOverriden(Class<? extends AndroidCallableI<?>> cls) {
        try {
            Boolean bool = (Boolean) isPreCallOverriddenMap.get(cls);
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z = false;
            if (cls.getMethod("onPreCall", new Class[0]).getDeclaringClass() != AndroidCallableWrapper.class) {
                z = true;
            }
            bool = Boolean.valueOf(z);
            isPreCallOverriddenMap.put(cls, bool);
            return bool.booleanValue();
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }
}
