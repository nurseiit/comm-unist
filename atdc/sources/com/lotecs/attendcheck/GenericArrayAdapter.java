package com.lotecs.attendcheck;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public abstract class GenericArrayAdapter<T> extends ArrayAdapter<T> {
    private LayoutInflater mInflater;

    class ViewHolder {
        TextView textView;

        private ViewHolder(View view) {
            this.textView = (TextView) view.findViewById(16908308);
        }
    }

    public abstract void drawText(TextView textView, T t);

    public GenericArrayAdapter(Context context, ArrayList<T> arrayList) {
        super(context, 0, arrayList);
        init(context);
    }

    private void init(Context context) {
        this.mInflater = LayoutInflater.from(context);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = this.mInflater.inflate(17367048, viewGroup, false);
            viewHolder = new ViewHolder(view);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        drawText(viewHolder.textView, getItem(i));
        return view;
    }
}
