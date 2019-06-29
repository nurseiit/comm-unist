package android.support.v4.widget;

import android.support.annotation.NonNull;
import android.widget.ListView;

public class ListViewAutoScrollHelper extends AutoScrollHelper {
    private final ListView mTarget;

    public boolean canTargetScrollHorizontally(int i) {
        return false;
    }

    public ListViewAutoScrollHelper(@NonNull ListView listView) {
        super(listView);
        this.mTarget = listView;
    }

    public void scrollTargetBy(int i, int i2) {
        ListViewCompat.scrollListBy(this.mTarget, i2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0038 A:{RETURN} */
    public boolean canTargetScrollVertically(int r8) {
        /*
        r7 = this;
        r0 = r7.mTarget;
        r1 = r0.getCount();
        r2 = 0;
        if (r1 != 0) goto L_0x000a;
    L_0x0009:
        return r2;
    L_0x000a:
        r3 = r0.getChildCount();
        r4 = r0.getFirstVisiblePosition();
        r5 = r4 + r3;
        r6 = 1;
        if (r8 <= 0) goto L_0x0029;
    L_0x0017:
        if (r5 < r1) goto L_0x0038;
    L_0x0019:
        r3 = r3 - r6;
        r8 = r0.getChildAt(r3);
        r8 = r8.getBottom();
        r0 = r0.getHeight();
        if (r8 > r0) goto L_0x0038;
    L_0x0028:
        return r2;
    L_0x0029:
        if (r8 >= 0) goto L_0x0039;
    L_0x002b:
        if (r4 > 0) goto L_0x0038;
    L_0x002d:
        r8 = r0.getChildAt(r2);
        r8 = r8.getTop();
        if (r8 < 0) goto L_0x0038;
    L_0x0037:
        return r2;
    L_0x0038:
        return r6;
    L_0x0039:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ListViewAutoScrollHelper.canTargetScrollVertically(int):boolean");
    }
}
