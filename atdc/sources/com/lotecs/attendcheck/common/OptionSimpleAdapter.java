package com.lotecs.attendcheck.common;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import java.util.LinkedHashMap;
import java.util.Map;
import kr.ac.unist.atdc.R;

public class OptionSimpleAdapter extends BaseAdapter {
    public static final int TYPE_SECTION_HEADER = 0;
    public final ArrayAdapter<String> headers;
    public final Map<String, Adapter> sections = new LinkedHashMap();

    public boolean areAllItemsSelectable() {
        return false;
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public OptionSimpleAdapter(Context context) {
        this.headers = new ArrayAdapter(context, R.layout.setting_list_header);
    }

    public void addSection(String str, Adapter adapter) {
        this.headers.add(str);
        this.sections.put(str, adapter);
    }

    public Object getItem(int i) {
        for (Object next : this.sections.keySet()) {
            Adapter adapter = (Adapter) this.sections.get(next);
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return next;
            }
            if (i < count) {
                return adapter.getItem(i - 1);
            }
            i -= count;
        }
        return null;
    }

    public int getCount() {
        int i = 0;
        for (Adapter count : this.sections.values()) {
            i += count.getCount() + 1;
        }
        return i;
    }

    public int getViewTypeCount() {
        int i = 1;
        for (Adapter viewTypeCount : this.sections.values()) {
            i += viewTypeCount.getViewTypeCount();
        }
        return i;
    }

    public int getItemViewType(int i) {
        int i2 = 1;
        for (Object obj : this.sections.keySet()) {
            Adapter adapter = (Adapter) this.sections.get(obj);
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return 0;
            }
            if (i < count) {
                return i2 + adapter.getItemViewType(i - 1);
            }
            i -= count;
            i2 += adapter.getViewTypeCount();
        }
        return -1;
    }

    public boolean isEnabled(int i) {
        return getItemViewType(i) != 0;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        int i2 = 0;
        for (Object obj : this.sections.keySet()) {
            Adapter adapter = (Adapter) this.sections.get(obj);
            int count = adapter.getCount() + 1;
            if (i == 0) {
                return this.headers.getView(i2, view, viewGroup);
            }
            if (i < count) {
                return adapter.getView(i - 1, view, viewGroup);
            }
            i -= count;
            i2++;
        }
        return null;
    }
}
