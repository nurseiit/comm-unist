package com.lotecs.attendcheck.common;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import kr.ac.unist.atdc.R;
import roboguice.adapter.IterableAdapter;

public class OptionComplexAdapter extends IterableAdapter<Component> {
    protected static final String TAG = "OptionComplexAdapter";
    private final int ResourceId;
    private OnCheckButtonListener checkButtonListener;
    private final ArrayList<Component> components;
    private final Context context;
    private final LayoutInflater inflater = ((LayoutInflater) this.context.getSystemService("layout_inflater"));
    private boolean mIsDown;
    protected float mPreviousX;
    protected float mPreviousY;

    public interface OnCheckButtonListener {
        void onClick(int i, boolean z);
    }

    static class ViewHolder {
        TextView list_caption;
        ImageButton list_imgbtn;
        TextView list_title;

        ViewHolder() {
        }
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public OptionComplexAdapter(Context context, List<Component> list, int i) {
        super(context, i, (Iterable) list);
        this.context = context;
        this.ResourceId = i;
        this.components = (ArrayList) list;
    }

    public View getView(final int i, View view, ViewGroup viewGroup) {
        view = this.inflater.inflate(this.ResourceId, null);
        final ViewHolder viewHolder = new ViewHolder();
        viewHolder.list_title = (TextView) view.findViewById(R.id.list_complex_title);
        viewHolder.list_caption = (TextView) view.findViewById(R.id.list_complex_caption);
        viewHolder.list_imgbtn = (ImageButton) view.findViewById(R.id.list_imgbtn);
        if (((Component) this.components.get(i)).isState()) {
            viewHolder.list_imgbtn.setImageResource(R.drawable.sw_on);
        } else {
            viewHolder.list_imgbtn.setImageResource(R.drawable.sw_off);
        }
        view.setTag(viewHolder);
        view.setTag(viewHolder.list_imgbtn);
        viewHolder.list_imgbtn.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                switch (motionEvent.getAction()) {
                    case 0:
                        OptionComplexAdapter.this.mIsDown = true;
                        break;
                    case 1:
                        break;
                    case 2:
                        detectSwipe(x - OptionComplexAdapter.this.mPreviousX, y - OptionComplexAdapter.this.mPreviousY);
                        break;
                }
                OptionComplexAdapter.this.mIsDown = false;
                OptionComplexAdapter.this.mPreviousX = x;
                OptionComplexAdapter.this.mPreviousY = y;
                return true;
            }

            private void detectSwipe(float f, float f2) {
                String str = OptionComplexAdapter.TAG;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("dx = ");
                stringBuilder.append(f);
                Log.d(str, stringBuilder.toString());
                if (!OptionComplexAdapter.this.mIsDown) {
                    if (f < 0.0f) {
                        viewHolder.list_imgbtn.setImageResource(R.drawable.sw_off);
                        ((Component) OptionComplexAdapter.this.components.get(i)).setState(false);
                        OptionComplexAdapter.this.checkButtonListener.onClick(i, false);
                        return;
                    }
                    viewHolder.list_imgbtn.setImageResource(R.drawable.sw_on);
                    ((Component) OptionComplexAdapter.this.components.get(i)).setState(true);
                    OptionComplexAdapter.this.checkButtonListener.onClick(i, true);
                }
            }
        });
        viewHolder.list_title.setText(((Component) this.components.get(i)).getTitle());
        viewHolder.list_caption.setText(((Component) this.components.get(i)).getCaption());
        return view;
    }

    public void setOnCheckButtonListener(OnCheckButtonListener onCheckButtonListener) {
        this.checkButtonListener = onCheckButtonListener;
    }

    public int getCount() {
        return this.components.size();
    }

    public Component getItem(int i) {
        return (Component) this.components.get(i);
    }
}
