package roboguice.adapter;

import android.content.Context;
import android.widget.ArrayAdapter;
import java.util.ArrayList;
import java.util.List;

public class IterableAdapter<T> extends ArrayAdapter<T> {
    public IterableAdapter(Context context, int i, int i2) {
        super(context, i, i2);
    }

    public IterableAdapter(Context context, int i, int i2, Iterable<T> iterable) {
        super(context, i, i2, toList(iterable));
    }

    public IterableAdapter(Context context, int i) {
        super(context, i);
    }

    public IterableAdapter(Context context, int i, Iterable<T> iterable) {
        super(context, i, toList(iterable));
    }

    protected static <T> List<T> toList(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T add : iterable) {
            arrayList.add(add);
        }
        return arrayList;
    }
}
