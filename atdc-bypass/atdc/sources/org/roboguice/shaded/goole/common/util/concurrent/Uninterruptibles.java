package org.roboguice.shaded.goole.common.util.concurrent;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.base.Preconditions;

@Beta
public final class Uninterruptibles {
    public static void awaitUninterruptibly(CountDownLatch countDownLatch) {
        Object obj = null;
        while (true) {
            try {
                countDownLatch.await();
                break;
            } catch (InterruptedException unused) {
                obj = 1;
            } catch (Throwable th) {
                if (obj != null) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (obj != null) {
            Thread.currentThread().interrupt();
        }
    }

    public static boolean awaitUninterruptibly(CountDownLatch countDownLatch, long j, TimeUnit timeUnit) {
        long nanoTime;
        Object obj = null;
        try {
            boolean await;
            j = timeUnit.toNanos(j);
            nanoTime = System.nanoTime() + j;
            while (true) {
                await = countDownLatch.await(j, TimeUnit.NANOSECONDS);
                break;
            }
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
            return await;
        } catch (InterruptedException unused) {
            obj = 1;
            j = nanoTime - System.nanoTime();
        } catch (Throwable th) {
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void joinUninterruptibly(Thread thread) {
        Object obj = null;
        while (true) {
            try {
                thread.join();
                break;
            } catch (InterruptedException unused) {
                obj = 1;
            } catch (Throwable th) {
                if (obj != null) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (obj != null) {
            Thread.currentThread().interrupt();
        }
    }

    public static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
        Object obj;
        Object obj2 = null;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                obj2 = 1;
            } catch (Throwable th) {
                if (obj2 != null) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (obj2 != null) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public static <V> V getUninterruptibly(Future<V> future, long j, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        long nanoTime;
        Object obj = null;
        try {
            Object obj2;
            j = timeUnit.toNanos(j);
            nanoTime = System.nanoTime() + j;
            while (true) {
                obj2 = future.get(j, TimeUnit.NANOSECONDS);
                break;
            }
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
            return obj2;
        } catch (InterruptedException unused) {
            obj = 1;
            j = nanoTime - System.nanoTime();
        } catch (Throwable th) {
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void joinUninterruptibly(Thread thread, long j, TimeUnit timeUnit) {
        long nanoTime;
        Preconditions.checkNotNull(thread);
        Object obj = null;
        try {
            j = timeUnit.toNanos(j);
            nanoTime = System.nanoTime() + j;
            while (true) {
                TimeUnit.NANOSECONDS.timedJoin(thread, j);
                break;
            }
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        } catch (InterruptedException unused) {
            obj = 1;
            j = nanoTime - System.nanoTime();
        } catch (Throwable th) {
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public static <E> E takeUninterruptibly(BlockingQueue<E> blockingQueue) {
        Object take;
        Object obj = null;
        while (true) {
            try {
                take = blockingQueue.take();
                break;
            } catch (InterruptedException unused) {
                obj = 1;
            } catch (Throwable th) {
                if (obj != null) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (obj != null) {
            Thread.currentThread().interrupt();
        }
        return take;
    }

    public static <E> void putUninterruptibly(BlockingQueue<E> blockingQueue, E e) {
        Object obj = null;
        while (true) {
            try {
                blockingQueue.put(e);
                break;
            } catch (InterruptedException unused) {
                obj = 1;
            } catch (Throwable th) {
                if (obj != null) {
                    Thread.currentThread().interrupt();
                }
            }
        }
        if (obj != null) {
            Thread.currentThread().interrupt();
        }
    }

    public static void sleepUninterruptibly(long j, TimeUnit timeUnit) {
        long nanoTime;
        Object obj = null;
        try {
            j = timeUnit.toNanos(j);
            nanoTime = System.nanoTime() + j;
            while (true) {
                TimeUnit.NANOSECONDS.sleep(j);
                break;
            }
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        } catch (InterruptedException unused) {
            obj = 1;
            j = nanoTime - System.nanoTime();
        } catch (Throwable th) {
            if (obj != null) {
                Thread.currentThread().interrupt();
            }
        }
    }

    private Uninterruptibles() {
    }
}
