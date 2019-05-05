package android.support.v7.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.ResourceCursorAdapter;
import android.support.v7.appcompat.R;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;

class SuggestionsAdapter extends ResourceCursorAdapter implements OnClickListener {
    private static final boolean DBG = false;
    static final int INVALID_INDEX = -1;
    private static final String LOG_TAG = "SuggestionsAdapter";
    private static final int QUERY_LIMIT = 50;
    static final int REFINE_ALL = 2;
    static final int REFINE_BY_ENTRY = 1;
    static final int REFINE_NONE = 0;
    private boolean mClosed = false;
    private final int mCommitIconResId;
    private int mFlagsCol = -1;
    private int mIconName1Col = -1;
    private int mIconName2Col = -1;
    private final WeakHashMap<String, ConstantState> mOutsideDrawablesCache;
    private final Context mProviderContext;
    private int mQueryRefinement = 1;
    private final SearchManager mSearchManager = ((SearchManager) this.mContext.getSystemService(Event.SEARCH));
    private final SearchView mSearchView;
    private final SearchableInfo mSearchable;
    private int mText1Col = -1;
    private int mText2Col = -1;
    private int mText2UrlCol = -1;
    private ColorStateList mUrlColor;

    private static final class ChildViewCache {
        public final ImageView mIcon1;
        public final ImageView mIcon2;
        public final ImageView mIconRefine;
        public final TextView mText1;
        public final TextView mText2;

        public ChildViewCache(View view) {
            this.mText1 = (TextView) view.findViewById(16908308);
            this.mText2 = (TextView) view.findViewById(16908309);
            this.mIcon1 = (ImageView) view.findViewById(16908295);
            this.mIcon2 = (ImageView) view.findViewById(16908296);
            this.mIconRefine = (ImageView) view.findViewById(R.id.edit_query);
        }
    }

    public boolean hasStableIds() {
        return false;
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.mSearchView = searchView;
        this.mSearchable = searchableInfo;
        this.mCommitIconResId = searchView.getSuggestionCommitIconResId();
        this.mProviderContext = context;
        this.mOutsideDrawablesCache = weakHashMap;
    }

    public void setQueryRefinement(int i) {
        this.mQueryRefinement = i;
    }

    public int getQueryRefinement() {
        return this.mQueryRefinement;
    }

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.mSearchView.getVisibility() != 0 || this.mSearchView.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor searchManagerSuggestions = getSearchManagerSuggestions(this.mSearchable, charSequence2, 50);
            if (searchManagerSuggestions != null) {
                searchManagerSuggestions.getCount();
                return searchManagerSuggestions;
            }
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, "Search suggestions query threw an exception.", e);
        }
        return null;
    }

    public void close() {
        changeCursor(null);
        this.mClosed = true;
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        updateSpinnerState(getCursor());
    }

    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        updateSpinnerState(getCursor());
    }

    private void updateSpinnerState(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null && !extras.getBoolean("in_progress")) {
        }
    }

    public void changeCursor(Cursor cursor) {
        if (this.mClosed) {
            Log.w(LOG_TAG, "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.mText1Col = cursor.getColumnIndex("suggest_text_1");
                this.mText2Col = cursor.getColumnIndex("suggest_text_2");
                this.mText2UrlCol = cursor.getColumnIndex("suggest_text_2_url");
                this.mIconName1Col = cursor.getColumnIndex("suggest_icon_1");
                this.mIconName2Col = cursor.getColumnIndex("suggest_icon_2");
                this.mFlagsCol = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, "error changing cursor and caching columns", e);
        }
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new ChildViewCache(newView));
        ((ImageView) newView.findViewById(R.id.edit_query)).setImageResource(this.mCommitIconResId);
        return newView;
    }

    public void bindView(View view, Context context, Cursor cursor) {
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i = this.mFlagsCol != -1 ? cursor.getInt(this.mFlagsCol) : 0;
        if (childViewCache.mText1 != null) {
            setViewText(childViewCache.mText1, getStringOrNull(cursor, this.mText1Col));
        }
        if (childViewCache.mText2 != null) {
            CharSequence formatUrl;
            String stringOrNull = getStringOrNull(cursor, this.mText2UrlCol);
            if (stringOrNull != null) {
                formatUrl = formatUrl(stringOrNull);
            } else {
                formatUrl = getStringOrNull(cursor, this.mText2Col);
            }
            if (TextUtils.isEmpty(formatUrl)) {
                if (childViewCache.mText1 != null) {
                    childViewCache.mText1.setSingleLine(false);
                    childViewCache.mText1.setMaxLines(2);
                }
            } else if (childViewCache.mText1 != null) {
                childViewCache.mText1.setSingleLine(true);
                childViewCache.mText1.setMaxLines(1);
            }
            setViewText(childViewCache.mText2, formatUrl);
        }
        if (childViewCache.mIcon1 != null) {
            setViewDrawable(childViewCache.mIcon1, getIcon1(cursor), 4);
        }
        if (childViewCache.mIcon2 != null) {
            setViewDrawable(childViewCache.mIcon2, getIcon2(cursor), 8);
        }
        if (this.mQueryRefinement == 2 || (this.mQueryRefinement == 1 && (i & 1) != 0)) {
            childViewCache.mIconRefine.setVisibility(0);
            childViewCache.mIconRefine.setTag(childViewCache.mText1.getText());
            childViewCache.mIconRefine.setOnClickListener(this);
            return;
        }
        childViewCache.mIconRefine.setVisibility(8);
    }

    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.mSearchView.onQueryRefine((CharSequence) tag);
        }
    }

    private CharSequence formatUrl(CharSequence charSequence) {
        if (this.mUrlColor == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
            this.mUrlColor = this.mContext.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.mUrlColor, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private void setViewText(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private Drawable getIcon1(Cursor cursor) {
        if (this.mIconName1Col == -1) {
            return null;
        }
        Drawable drawableFromResourceValue = getDrawableFromResourceValue(cursor.getString(this.mIconName1Col));
        if (drawableFromResourceValue != null) {
            return drawableFromResourceValue;
        }
        return getDefaultIcon1(cursor);
    }

    private Drawable getIcon2(Cursor cursor) {
        if (this.mIconName2Col == -1) {
            return null;
        }
        return getDrawableFromResourceValue(cursor.getString(this.mIconName2Col));
    }

    private void setViewDrawable(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    public CharSequence convertToString(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        String columnString = getColumnString(cursor, "suggest_intent_query");
        if (columnString != null) {
            return columnString;
        }
        if (this.mSearchable.shouldRewriteQueryFromData()) {
            columnString = getColumnString(cursor, "suggest_intent_data");
            if (columnString != null) {
                return columnString;
            }
        }
        if (this.mSearchable.shouldRewriteQueryFromText()) {
            String columnString2 = getColumnString(cursor, "suggest_text_1");
            if (columnString2 != null) {
                return columnString2;
            }
        }
        return null;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, "Search suggestions cursor threw exception.", e);
            view = newView(this.mContext, this.mCursor, viewGroup);
            if (view != null) {
                ((ChildViewCache) view.getTag()).mText1.setText(e.toString());
            }
            return view;
        }
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, "Search suggestions cursor threw exception.", e);
            view = newDropDownView(this.mContext, this.mCursor, viewGroup);
            if (view != null) {
                ((ChildViewCache) view.getTag()).mText1.setText(e.toString());
            }
            return view;
        }
    }

    private Drawable getDrawableFromResourceValue(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        StringBuilder stringBuilder;
        try {
            int parseInt = Integer.parseInt(str);
            stringBuilder = new StringBuilder();
            stringBuilder.append("android.resource://");
            stringBuilder.append(this.mProviderContext.getPackageName());
            stringBuilder.append("/");
            stringBuilder.append(parseInt);
            String stringBuilder2 = stringBuilder.toString();
            Drawable checkIconCache = checkIconCache(stringBuilder2);
            if (checkIconCache != null) {
                return checkIconCache;
            }
            Drawable drawable = ContextCompat.getDrawable(this.mProviderContext, parseInt);
            storeInIconCache(stringBuilder2, drawable);
            return drawable;
        } catch (NumberFormatException unused) {
            Drawable checkIconCache2 = checkIconCache(str);
            if (checkIconCache2 != null) {
                return checkIconCache2;
            }
            checkIconCache2 = getDrawable(Uri.parse(str));
            storeInIconCache(str, checkIconCache2);
            return checkIconCache2;
        } catch (NotFoundException unused2) {
            String str2 = LOG_TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("Icon resource not found: ");
            stringBuilder.append(str);
            Log.w(str2, stringBuilder.toString());
            return null;
        }
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0012 */
    /* JADX WARNING: Can't wrap try/catch for region: R(3:7|8|9) */
    /* JADX WARNING: Missing block: B:8:?, code skipped:
            r2 = new java.lang.StringBuilder();
            r2.append("Resource does not exist: ");
            r2.append(r7);
     */
    /* JADX WARNING: Missing block: B:9:0x0028, code skipped:
            throw new java.io.FileNotFoundException(r2.toString());
     */
    private android.graphics.drawable.Drawable getDrawable(android.net.Uri r7) {
        /*
        r6 = this;
        r0 = 0;
        r1 = r7.getScheme();	 Catch:{ FileNotFoundException -> 0x0089 }
        r2 = "android.resource";
        r1 = r2.equals(r1);	 Catch:{ FileNotFoundException -> 0x0089 }
        if (r1 == 0) goto L_0x0029;
    L_0x000d:
        r1 = r6.getDrawableFromResourceUri(r7);	 Catch:{ NotFoundException -> 0x0012 }
        return r1;
    L_0x0012:
        r1 = new java.io.FileNotFoundException;	 Catch:{ FileNotFoundException -> 0x0089 }
        r2 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0089 }
        r2.<init>();	 Catch:{ FileNotFoundException -> 0x0089 }
        r3 = "Resource does not exist: ";
        r2.append(r3);	 Catch:{ FileNotFoundException -> 0x0089 }
        r2.append(r7);	 Catch:{ FileNotFoundException -> 0x0089 }
        r2 = r2.toString();	 Catch:{ FileNotFoundException -> 0x0089 }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0089 }
        throw r1;	 Catch:{ FileNotFoundException -> 0x0089 }
    L_0x0029:
        r1 = r6.mProviderContext;	 Catch:{ FileNotFoundException -> 0x0089 }
        r1 = r1.getContentResolver();	 Catch:{ FileNotFoundException -> 0x0089 }
        r1 = r1.openInputStream(r7);	 Catch:{ FileNotFoundException -> 0x0089 }
        if (r1 != 0) goto L_0x004c;
    L_0x0035:
        r1 = new java.io.FileNotFoundException;	 Catch:{ FileNotFoundException -> 0x0089 }
        r2 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0089 }
        r2.<init>();	 Catch:{ FileNotFoundException -> 0x0089 }
        r3 = "Failed to open ";
        r2.append(r3);	 Catch:{ FileNotFoundException -> 0x0089 }
        r2.append(r7);	 Catch:{ FileNotFoundException -> 0x0089 }
        r2 = r2.toString();	 Catch:{ FileNotFoundException -> 0x0089 }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0089 }
        throw r1;	 Catch:{ FileNotFoundException -> 0x0089 }
    L_0x004c:
        r2 = android.graphics.drawable.Drawable.createFromStream(r1, r0);	 Catch:{ all -> 0x006c }
        r1.close();	 Catch:{ IOException -> 0x0054 }
        goto L_0x006b;
    L_0x0054:
        r1 = move-exception;
        r3 = "SuggestionsAdapter";
        r4 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0089 }
        r4.<init>();	 Catch:{ FileNotFoundException -> 0x0089 }
        r5 = "Error closing icon stream for ";
        r4.append(r5);	 Catch:{ FileNotFoundException -> 0x0089 }
        r4.append(r7);	 Catch:{ FileNotFoundException -> 0x0089 }
        r4 = r4.toString();	 Catch:{ FileNotFoundException -> 0x0089 }
        android.util.Log.e(r3, r4, r1);	 Catch:{ FileNotFoundException -> 0x0089 }
    L_0x006b:
        return r2;
    L_0x006c:
        r2 = move-exception;
        r1.close();	 Catch:{ IOException -> 0x0071 }
        goto L_0x0088;
    L_0x0071:
        r1 = move-exception;
        r3 = "SuggestionsAdapter";
        r4 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0089 }
        r4.<init>();	 Catch:{ FileNotFoundException -> 0x0089 }
        r5 = "Error closing icon stream for ";
        r4.append(r5);	 Catch:{ FileNotFoundException -> 0x0089 }
        r4.append(r7);	 Catch:{ FileNotFoundException -> 0x0089 }
        r4 = r4.toString();	 Catch:{ FileNotFoundException -> 0x0089 }
        android.util.Log.e(r3, r4, r1);	 Catch:{ FileNotFoundException -> 0x0089 }
    L_0x0088:
        throw r2;	 Catch:{ FileNotFoundException -> 0x0089 }
    L_0x0089:
        r1 = move-exception;
        r2 = "SuggestionsAdapter";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "Icon not found: ";
        r3.append(r4);
        r3.append(r7);
        r7 = ", ";
        r3.append(r7);
        r7 = r1.getMessage();
        r3.append(r7);
        r7 = r3.toString();
        android.util.Log.w(r2, r7);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.SuggestionsAdapter.getDrawable(android.net.Uri):android.graphics.drawable.Drawable");
    }

    private Drawable checkIconCache(String str) {
        ConstantState constantState = (ConstantState) this.mOutsideDrawablesCache.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private void storeInIconCache(String str, Drawable drawable) {
        if (drawable != null) {
            this.mOutsideDrawablesCache.put(str, drawable.getConstantState());
        }
    }

    private Drawable getDefaultIcon1(Cursor cursor) {
        Drawable activityIconWithCache = getActivityIconWithCache(this.mSearchable.getSearchActivity());
        if (activityIconWithCache != null) {
            return activityIconWithCache;
        }
        return this.mContext.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable getActivityIconWithCache(ComponentName componentName) {
        String flattenToShortString = componentName.flattenToShortString();
        Object obj = null;
        if (this.mOutsideDrawablesCache.containsKey(flattenToShortString)) {
            Drawable newDrawable;
            ConstantState constantState = (ConstantState) this.mOutsideDrawablesCache.get(flattenToShortString);
            if (constantState != null) {
                newDrawable = constantState.newDrawable(this.mProviderContext.getResources());
            }
            return newDrawable;
        }
        Drawable activityIcon = getActivityIcon(componentName);
        if (activityIcon != null) {
            obj = activityIcon.getConstantState();
        }
        this.mOutsideDrawablesCache.put(flattenToShortString, obj);
        return activityIcon;
    }

    private Drawable getActivityIcon(ComponentName componentName) {
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            String str = LOG_TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Invalid icon resource ");
            stringBuilder.append(iconResource);
            stringBuilder.append(" for ");
            stringBuilder.append(componentName.flattenToShortString());
            Log.w(str, stringBuilder.toString());
            return null;
        } catch (NameNotFoundException e) {
            Log.w(LOG_TAG, e.toString());
            return null;
        }
    }

    public static String getColumnString(Cursor cursor, String str) {
        return getStringOrNull(cursor, cursor.getColumnIndex(str));
    }

    private static String getStringOrNull(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e(LOG_TAG, "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Drawable getDrawableFromResourceUri(Uri uri) throws FileNotFoundException {
        String authority = uri.getAuthority();
        StringBuilder stringBuilder;
        if (TextUtils.isEmpty(authority)) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("No authority: ");
            stringBuilder.append(uri);
            throw new FileNotFoundException(stringBuilder.toString());
        }
        try {
            Resources resourcesForApplication = this.mContext.getPackageManager().getResourcesForApplication(authority);
            List pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("No path: ");
                stringBuilder.append(uri);
                throw new FileNotFoundException(stringBuilder.toString());
            }
            int parseInt;
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    parseInt = Integer.parseInt((String) pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("Single path segment is not a resource ID: ");
                    stringBuilder.append(uri);
                    throw new FileNotFoundException(stringBuilder.toString());
                }
            } else if (size == 2) {
                parseInt = resourcesForApplication.getIdentifier((String) pathSegments.get(1), (String) pathSegments.get(0), authority);
            } else {
                stringBuilder = new StringBuilder();
                stringBuilder.append("More than two path segments: ");
                stringBuilder.append(uri);
                throw new FileNotFoundException(stringBuilder.toString());
            }
            if (parseInt != 0) {
                return resourcesForApplication.getDrawable(parseInt);
            }
            stringBuilder = new StringBuilder();
            stringBuilder.append("No resource found for: ");
            stringBuilder.append(uri);
            throw new FileNotFoundException(stringBuilder.toString());
        } catch (NameNotFoundException unused2) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("No package found for authority: ");
            stringBuilder.append(uri);
            throw new FileNotFoundException(stringBuilder.toString());
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Cursor getSearchManagerSuggestions(SearchableInfo searchableInfo, String str, int i) {
        String[] strArr = null;
        if (searchableInfo == null) {
            return null;
        }
        String suggestAuthority = searchableInfo.getSuggestAuthority();
        if (suggestAuthority == null) {
            return null;
        }
        Builder fragment = new Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.mContext.getContentResolver().query(fragment.build(), null, suggestSelection, strArr2, null);
    }
}
