package com.google.inject.matcher;

import java.io.Serializable;

public abstract class AbstractMatcher<T> implements Matcher<T> {

    private static class AndMatcher<T> extends AbstractMatcher<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Matcher<? super T> a;
        private final Matcher<? super T> b;

        public AndMatcher(Matcher<? super T> matcher, Matcher<? super T> matcher2) {
            this.a = matcher;
            this.b = matcher2;
        }

        public boolean matches(T t) {
            return this.a.matches(t) && this.b.matches(t);
        }

        public boolean equals(Object obj) {
            if (obj instanceof AndMatcher) {
                AndMatcher andMatcher = (AndMatcher) obj;
                if (andMatcher.a.equals(this.a) && andMatcher.b.equals(this.b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.a.hashCode() ^ this.b.hashCode()) * 41;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("and(");
            stringBuilder.append(this.a);
            stringBuilder.append(", ");
            stringBuilder.append(this.b);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    private static class OrMatcher<T> extends AbstractMatcher<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Matcher<? super T> a;
        private final Matcher<? super T> b;

        public OrMatcher(Matcher<? super T> matcher, Matcher<? super T> matcher2) {
            this.a = matcher;
            this.b = matcher2;
        }

        public boolean matches(T t) {
            return this.a.matches(t) || this.b.matches(t);
        }

        public boolean equals(Object obj) {
            if (obj instanceof OrMatcher) {
                OrMatcher orMatcher = (OrMatcher) obj;
                if (orMatcher.a.equals(this.a) && orMatcher.b.equals(this.b)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return (this.a.hashCode() ^ this.b.hashCode()) * 37;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("or(");
            stringBuilder.append(this.a);
            stringBuilder.append(", ");
            stringBuilder.append(this.b);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    public Matcher<T> and(Matcher<? super T> matcher) {
        return new AndMatcher(this, matcher);
    }

    public Matcher<T> or(Matcher<? super T> matcher) {
        return new OrMatcher(this, matcher);
    }
}
