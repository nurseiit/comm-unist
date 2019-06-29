package okhttp3.internal.http2;

import java.util.Arrays;

public final class Settings {
    static final int COUNT = 10;
    static final int DEFAULT_INITIAL_WINDOW_SIZE = 65535;
    static final int ENABLE_PUSH = 2;
    static final int HEADER_TABLE_SIZE = 1;
    static final int INITIAL_WINDOW_SIZE = 7;
    static final int MAX_CONCURRENT_STREAMS = 4;
    static final int MAX_FRAME_SIZE = 5;
    static final int MAX_HEADER_LIST_SIZE = 6;
    private int set;
    private final int[] values = new int[10];

    /* Access modifiers changed, original: 0000 */
    public void clear() {
        this.set = 0;
        Arrays.fill(this.values, 0);
    }

    /* Access modifiers changed, original: 0000 */
    public Settings set(int i, int i2) {
        if (i < 0 || i >= this.values.length) {
            return this;
        }
        this.set = (1 << i) | this.set;
        this.values[i] = i2;
        return this;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean isSet(int i) {
        return ((1 << i) & this.set) != 0;
    }

    /* Access modifiers changed, original: 0000 */
    public int get(int i) {
        return this.values[i];
    }

    /* Access modifiers changed, original: 0000 */
    public int size() {
        return Integer.bitCount(this.set);
    }

    /* Access modifiers changed, original: 0000 */
    public int getHeaderTableSize() {
        return (this.set & 2) != 0 ? this.values[1] : -1;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean getEnablePush(boolean z) {
        int i = (this.set & 4) != 0 ? this.values[2] : z ? 1 : 0;
        return i == 1;
    }

    /* Access modifiers changed, original: 0000 */
    public int getMaxConcurrentStreams(int i) {
        return (this.set & 16) != 0 ? this.values[4] : i;
    }

    /* Access modifiers changed, original: 0000 */
    public int getMaxFrameSize(int i) {
        return (this.set & 32) != 0 ? this.values[5] : i;
    }

    /* Access modifiers changed, original: 0000 */
    public int getMaxHeaderListSize(int i) {
        return (this.set & 64) != 0 ? this.values[6] : i;
    }

    /* Access modifiers changed, original: 0000 */
    public int getInitialWindowSize() {
        return (this.set & 128) != 0 ? this.values[7] : 65535;
    }

    /* Access modifiers changed, original: 0000 */
    public void merge(Settings settings) {
        for (int i = 0; i < 10; i++) {
            if (settings.isSet(i)) {
                set(i, settings.get(i));
            }
        }
    }
}
