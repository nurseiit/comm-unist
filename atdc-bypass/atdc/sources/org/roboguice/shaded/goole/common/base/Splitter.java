package org.roboguice.shaded.goole.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.CheckReturnValue;
import org.roboguice.shaded.goole.common.annotations.Beta;
import org.roboguice.shaded.goole.common.annotations.GwtCompatible;
import org.roboguice.shaded.goole.common.annotations.GwtIncompatible;

@GwtCompatible(emulated = true)
public final class Splitter {
    private final int limit;
    private final boolean omitEmptyStrings;
    private final Strategy strategy;
    private final CharMatcher trimmer;

    @Beta
    public static final class MapSplitter {
        private static final String INVALID_ENTRY_MESSAGE = "Chunk [%s] is not a valid entry";
        private final Splitter entrySplitter;
        private final Splitter outerSplitter;

        /* synthetic */ MapSplitter(Splitter splitter, Splitter splitter2, AnonymousClass1 anonymousClass1) {
            this(splitter, splitter2);
        }

        private MapSplitter(Splitter splitter, Splitter splitter2) {
            this.outerSplitter = splitter;
            this.entrySplitter = (Splitter) Preconditions.checkNotNull(splitter2);
        }

        public Map<String, String> split(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String access$000 : this.outerSplitter.split(charSequence)) {
                Iterator access$0002 = this.entrySplitter.splittingIterator(access$000);
                Preconditions.checkArgument(access$0002.hasNext(), INVALID_ENTRY_MESSAGE, access$000);
                String str = (String) access$0002.next();
                Preconditions.checkArgument(linkedHashMap.containsKey(str) ^ 1, "Duplicate key [%s] found.", str);
                Preconditions.checkArgument(access$0002.hasNext(), INVALID_ENTRY_MESSAGE, access$000);
                linkedHashMap.put(str, (String) access$0002.next());
                Preconditions.checkArgument(access$0002.hasNext() ^ 1, INVALID_ENTRY_MESSAGE, access$000);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }
    }

    private interface Strategy {
        Iterator<String> iterator(Splitter splitter, CharSequence charSequence);
    }

    private static abstract class SplittingIterator extends AbstractIterator<String> {
        int limit;
        int offset = 0;
        final boolean omitEmptyStrings;
        final CharSequence toSplit;
        final CharMatcher trimmer;

        public abstract int separatorEnd(int i);

        public abstract int separatorStart(int i);

        protected SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.trimmer = splitter.trimmer;
            this.omitEmptyStrings = splitter.omitEmptyStrings;
            this.limit = splitter.limit;
            this.toSplit = charSequence;
        }

        /* Access modifiers changed, original: protected */
        public String computeNext() {
            int i = this.offset;
            while (this.offset != -1) {
                int separatorStart = separatorStart(this.offset);
                if (separatorStart == -1) {
                    separatorStart = this.toSplit.length();
                    this.offset = -1;
                } else {
                    this.offset = separatorEnd(separatorStart);
                }
                if (this.offset == i) {
                    this.offset++;
                    if (this.offset >= this.toSplit.length()) {
                        this.offset = -1;
                    }
                } else {
                    while (i < separatorStart && this.trimmer.matches(this.toSplit.charAt(i))) {
                        i++;
                    }
                    while (separatorStart > i && this.trimmer.matches(this.toSplit.charAt(separatorStart - 1))) {
                        separatorStart--;
                    }
                    if (this.omitEmptyStrings && i == separatorStart) {
                        i = this.offset;
                    } else {
                        if (this.limit == 1) {
                            separatorStart = this.toSplit.length();
                            this.offset = -1;
                            while (separatorStart > i && this.trimmer.matches(this.toSplit.charAt(separatorStart - 1))) {
                                separatorStart--;
                            }
                        } else {
                            this.limit--;
                        }
                        return this.toSplit.subSequence(i, separatorStart).toString();
                    }
                }
            }
            return (String) endOfData();
        }
    }

    private Splitter(Strategy strategy) {
        this(strategy, false, CharMatcher.NONE, Integer.MAX_VALUE);
    }

    private Splitter(Strategy strategy, boolean z, CharMatcher charMatcher, int i) {
        this.strategy = strategy;
        this.omitEmptyStrings = z;
        this.trimmer = charMatcher;
        this.limit = i;
    }

    public static Splitter on(char c) {
        return on(CharMatcher.is(c));
    }

    public static Splitter on(final CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(new Strategy() {
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) {
                    /* Access modifiers changed, original: 0000 */
                    public int separatorEnd(int i) {
                        return i + 1;
                    }

                    /* Access modifiers changed, original: 0000 */
                    public int separatorStart(int i) {
                        return charMatcher.indexIn(this.toSplit, i);
                    }
                };
            }
        });
    }

    public static Splitter on(final String str) {
        Preconditions.checkArgument(str.length() != 0, "The separator may not be the empty string.");
        return new Splitter(new Strategy() {
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) {
                    public int separatorStart(int i) {
                        int length = str.length();
                        int length2 = this.toSplit.length() - length;
                        while (i <= length2) {
                            int i2 = 0;
                            while (i2 < length) {
                                if (this.toSplit.charAt(i2 + i) != str.charAt(i2)) {
                                    i++;
                                } else {
                                    i2++;
                                }
                            }
                            return i;
                        }
                        return -1;
                    }

                    public int separatorEnd(int i) {
                        return i + str.length();
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    public static Splitter on(final Pattern pattern) {
        Preconditions.checkNotNull(pattern);
        Preconditions.checkArgument(pattern.matcher("").matches() ^ 1, "The pattern may not match the empty string: %s", pattern);
        return new Splitter(new Strategy() {
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                final Matcher matcher = pattern.matcher(charSequence);
                return new SplittingIterator(splitter, charSequence) {
                    public int separatorStart(int i) {
                        return matcher.find(i) ? matcher.start() : -1;
                    }

                    public int separatorEnd(int i) {
                        return matcher.end();
                    }
                };
            }
        });
    }

    @GwtIncompatible("java.util.regex")
    public static Splitter onPattern(String str) {
        return on(Pattern.compile(str));
    }

    public static Splitter fixedLength(final int i) {
        Preconditions.checkArgument(i > 0, "The length may not be less than 1");
        return new Splitter(new Strategy() {
            public SplittingIterator iterator(Splitter splitter, CharSequence charSequence) {
                return new SplittingIterator(splitter, charSequence) {
                    public int separatorEnd(int i) {
                        return i;
                    }

                    public int separatorStart(int i) {
                        i += i;
                        return i < this.toSplit.length() ? i : -1;
                    }
                };
            }
        });
    }

    @CheckReturnValue
    public Splitter omitEmptyStrings() {
        return new Splitter(this.strategy, true, this.trimmer, this.limit);
    }

    @CheckReturnValue
    public Splitter limit(int i) {
        Preconditions.checkArgument(i > 0, "must be greater than zero: %s", Integer.valueOf(i));
        return new Splitter(this.strategy, this.omitEmptyStrings, this.trimmer, i);
    }

    @CheckReturnValue
    public Splitter trimResults() {
        return trimResults(CharMatcher.WHITESPACE);
    }

    @CheckReturnValue
    public Splitter trimResults(CharMatcher charMatcher) {
        Preconditions.checkNotNull(charMatcher);
        return new Splitter(this.strategy, this.omitEmptyStrings, charMatcher, this.limit);
    }

    public Iterable<String> split(final CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        return new Iterable<String>() {
            public Iterator<String> iterator() {
                return Splitter.this.splittingIterator(charSequence);
            }

            public String toString() {
                Joiner on = Joiner.on(", ");
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append('[');
                StringBuilder appendTo = on.appendTo(stringBuilder, (Iterable) this);
                appendTo.append(']');
                return appendTo.toString();
            }
        };
    }

    private Iterator<String> splittingIterator(CharSequence charSequence) {
        return this.strategy.iterator(this, charSequence);
    }

    @Beta
    public List<String> splitToList(CharSequence charSequence) {
        Preconditions.checkNotNull(charSequence);
        Iterator splittingIterator = splittingIterator(charSequence);
        ArrayList arrayList = new ArrayList();
        while (splittingIterator.hasNext()) {
            arrayList.add(splittingIterator.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(String str) {
        return withKeyValueSeparator(on(str));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(char c) {
        return withKeyValueSeparator(on(c));
    }

    @Beta
    @CheckReturnValue
    public MapSplitter withKeyValueSeparator(Splitter splitter) {
        return new MapSplitter(this, splitter, null);
    }
}
