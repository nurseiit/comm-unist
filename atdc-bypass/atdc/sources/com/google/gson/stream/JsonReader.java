package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final char[] buffer = new char[1024];
    private final Reader in;
    private boolean lenient = false;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    private int[] pathIndices;
    private String[] pathNames;
    int peeked = 0;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int pos = 0;
    private int[] stack = new int[32];
    private int stackSize = 0;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() {
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int i = jsonReader.peeked;
                if (i == 0) {
                    i = jsonReader.doPeek();
                }
                if (i == 13) {
                    jsonReader.peeked = 9;
                } else if (i == 12) {
                    jsonReader.peeked = 8;
                } else if (i == 14) {
                    jsonReader.peeked = 10;
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("Expected a name but was ");
                    stringBuilder.append(jsonReader.peek());
                    stringBuilder.append(jsonReader.locationString());
                    throw new IllegalStateException(stringBuilder.toString());
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = this.stack;
        int i = this.stackSize;
        this.stackSize = i + 1;
        iArr[i] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.in = reader;
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public void beginArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Expected BEGIN_ARRAY but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void endArray() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 4) {
            this.stackSize--;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Expected END_ARRAY but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void beginObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Expected BEGIN_OBJECT but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public void endObject() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 2) {
            this.stackSize--;
            this.pathNames[this.stackSize] = null;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            this.peeked = 0;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Expected END_OBJECT but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public boolean hasNext() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public JsonToken peek() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int doPeek() throws IOException {
        int nextNonWhitespace;
        int i = this.stack[this.stackSize - 1];
        if (i == 1) {
            this.stack[this.stackSize - 1] = 2;
        } else if (i == 2) {
            nextNonWhitespace = nextNonWhitespace(true);
            if (nextNonWhitespace != 44) {
                if (nextNonWhitespace == 59) {
                    checkLenient();
                } else if (nextNonWhitespace != 93) {
                    throw syntaxError("Unterminated array");
                } else {
                    this.peeked = 4;
                    return 4;
                }
            }
        } else if (i == 3 || i == 5) {
            int nextNonWhitespace2;
            this.stack[this.stackSize - 1] = 4;
            if (i == 5) {
                nextNonWhitespace2 = nextNonWhitespace(true);
                if (nextNonWhitespace2 != 44) {
                    if (nextNonWhitespace2 == 59) {
                        checkLenient();
                    } else if (nextNonWhitespace2 != 125) {
                        throw syntaxError("Unterminated object");
                    } else {
                        this.peeked = 2;
                        return 2;
                    }
                }
            }
            nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 == 34) {
                this.peeked = 13;
                return 13;
            } else if (nextNonWhitespace2 == 39) {
                checkLenient();
                this.peeked = 12;
                return 12;
            } else if (nextNonWhitespace2 != 125) {
                checkLenient();
                this.pos--;
                if (isLiteral((char) nextNonWhitespace2)) {
                    this.peeked = 14;
                    return 14;
                }
                throw syntaxError("Expected name");
            } else if (i != 5) {
                this.peeked = 2;
                return 2;
            } else {
                throw syntaxError("Expected name");
            }
        } else if (i == 4) {
            this.stack[this.stackSize - 1] = 5;
            nextNonWhitespace = nextNonWhitespace(true);
            if (nextNonWhitespace != 58) {
                if (nextNonWhitespace != 61) {
                    throw syntaxError("Expected ':'");
                }
                checkLenient();
                if ((this.pos < this.limit || fillBuffer(1)) && this.buffer[this.pos] == '>') {
                    this.pos++;
                }
            }
        } else if (i == 6) {
            if (this.lenient) {
                consumeNonExecutePrefix();
            }
            this.stack[this.stackSize - 1] = 7;
        } else if (i == 7) {
            if (nextNonWhitespace(false) == -1) {
                this.peeked = 17;
                return 17;
            }
            checkLenient();
            this.pos--;
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        nextNonWhitespace = nextNonWhitespace(true);
        if (nextNonWhitespace == 34) {
            this.peeked = 9;
            return 9;
        } else if (nextNonWhitespace != 39) {
            if (!(nextNonWhitespace == 44 || nextNonWhitespace == 59)) {
                if (nextNonWhitespace == 91) {
                    this.peeked = 3;
                    return 3;
                } else if (nextNonWhitespace != 93) {
                    if (nextNonWhitespace != 123) {
                        this.pos--;
                        i = peekKeyword();
                        if (i != 0) {
                            return i;
                        }
                        i = peekNumber();
                        if (i != 0) {
                            return i;
                        }
                        if (isLiteral(this.buffer[this.pos])) {
                            checkLenient();
                            this.peeked = 10;
                            return 10;
                        }
                        throw syntaxError("Expected value");
                    }
                    this.peeked = 1;
                    return 1;
                } else if (i == 1) {
                    this.peeked = 4;
                    return 4;
                }
            }
            if (i == 1 || i == 2) {
                checkLenient();
                this.pos--;
                this.peeked = 7;
                return 7;
            }
            throw syntaxError("Unexpected value");
        } else {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
    }

    private int peekKeyword() throws IOException {
        String str;
        int i;
        char c = this.buffer[this.pos];
        String str2;
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        int i2 = 1;
        while (i2 < length) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != str.charAt(i2) && c2 != str2.charAt(i2)) {
                return 0;
            }
            i2++;
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    private int peekNumber() throws java.io.IOException {
        /*
        r21 = this;
        r0 = r21;
        r1 = r0.buffer;
        r2 = r0.pos;
        r3 = r0.limit;
        r6 = 1;
        r7 = 0;
        r8 = r3;
        r3 = 0;
        r9 = 0;
        r10 = 1;
        r11 = 0;
        r13 = 0;
    L_0x0011:
        r14 = r2 + r3;
        r15 = 2;
        if (r14 != r8) goto L_0x0028;
    L_0x0016:
        r2 = r1.length;
        if (r3 != r2) goto L_0x001a;
    L_0x0019:
        return r7;
    L_0x001a:
        r2 = r3 + 1;
        r2 = r0.fillBuffer(r2);
        if (r2 != 0) goto L_0x0024;
    L_0x0022:
        goto L_0x0099;
    L_0x0024:
        r2 = r0.pos;
        r8 = r0.limit;
    L_0x0028:
        r14 = r2 + r3;
        r14 = r1[r14];
        r7 = 43;
        r4 = 3;
        r5 = 5;
        if (r14 == r7) goto L_0x00f2;
    L_0x0032:
        r7 = 69;
        if (r14 == r7) goto L_0x00e6;
    L_0x0036:
        r7 = 101; // 0x65 float:1.42E-43 double:5.0E-322;
        if (r14 == r7) goto L_0x00e6;
    L_0x003a:
        switch(r14) {
            case 45: goto L_0x00d9;
            case 46: goto L_0x00d1;
            default: goto L_0x003d;
        };
    L_0x003d:
        r7 = 48;
        if (r14 < r7) goto L_0x0093;
    L_0x0041:
        r7 = 57;
        if (r14 <= r7) goto L_0x0046;
    L_0x0045:
        goto L_0x0093;
    L_0x0046:
        if (r9 == r6) goto L_0x0088;
    L_0x0048:
        if (r9 != 0) goto L_0x004b;
    L_0x004a:
        goto L_0x0088;
    L_0x004b:
        if (r9 != r15) goto L_0x0078;
    L_0x004d:
        r18 = 0;
        r4 = (r11 > r18 ? 1 : (r11 == r18 ? 0 : -1));
        if (r4 != 0) goto L_0x0055;
    L_0x0053:
        r4 = 0;
        return r4;
    L_0x0055:
        r4 = 10;
        r4 = r4 * r11;
        r14 = r14 + -48;
        r14 = (long) r14;
        r16 = r4 - r14;
        r4 = -922337203685477580; // 0xf333333333333334 float:4.1723254E-8 double:-8.390303882365713E246;
        r7 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1));
        if (r7 > 0) goto L_0x0072;
    L_0x0067:
        r7 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1));
        if (r7 != 0) goto L_0x0070;
    L_0x006b:
        r4 = (r16 > r11 ? 1 : (r16 == r11 ? 0 : -1));
        if (r4 >= 0) goto L_0x0070;
    L_0x006f:
        goto L_0x0072;
    L_0x0070:
        r4 = 0;
        goto L_0x0073;
    L_0x0072:
        r4 = 1;
    L_0x0073:
        r4 = r4 & r10;
        r10 = r4;
        r11 = r16;
        goto L_0x0083;
    L_0x0078:
        if (r9 != r4) goto L_0x007d;
    L_0x007a:
        r7 = 0;
        r9 = 4;
        goto L_0x008f;
    L_0x007d:
        if (r9 == r5) goto L_0x0085;
    L_0x007f:
        r4 = 6;
        if (r9 != r4) goto L_0x0083;
    L_0x0082:
        goto L_0x0085;
    L_0x0083:
        r7 = 0;
        goto L_0x008f;
    L_0x0085:
        r7 = 0;
        r9 = 7;
        goto L_0x008f;
    L_0x0088:
        r14 = r14 + -48;
        r4 = -r14;
        r4 = (long) r4;
        r11 = r4;
        r7 = 0;
        r9 = 2;
    L_0x008f:
        r18 = 0;
        goto L_0x00f9;
    L_0x0093:
        r1 = r0.isLiteral(r14);
        if (r1 != 0) goto L_0x00cf;
    L_0x0099:
        if (r9 != r15) goto L_0x00bd;
    L_0x009b:
        if (r10 == 0) goto L_0x00bd;
    L_0x009d:
        r1 = -9223372036854775808;
        r4 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1));
        if (r4 != 0) goto L_0x00a5;
    L_0x00a3:
        if (r13 == 0) goto L_0x00bd;
    L_0x00a5:
        r18 = 0;
        r1 = (r11 > r18 ? 1 : (r11 == r18 ? 0 : -1));
        if (r1 != 0) goto L_0x00ad;
    L_0x00ab:
        if (r13 != 0) goto L_0x00bd;
    L_0x00ad:
        if (r13 == 0) goto L_0x00b0;
    L_0x00af:
        goto L_0x00b1;
    L_0x00b0:
        r11 = -r11;
    L_0x00b1:
        r0.peekedLong = r11;
        r1 = r0.pos;
        r1 = r1 + r3;
        r0.pos = r1;
        r1 = 15;
        r0.peeked = r1;
        return r1;
    L_0x00bd:
        if (r9 == r15) goto L_0x00c8;
    L_0x00bf:
        r1 = 4;
        if (r9 == r1) goto L_0x00c8;
    L_0x00c2:
        r1 = 7;
        if (r9 != r1) goto L_0x00c6;
    L_0x00c5:
        goto L_0x00c8;
    L_0x00c6:
        r7 = 0;
        return r7;
    L_0x00c8:
        r0.peekedNumberLength = r3;
        r1 = 16;
        r0.peeked = r1;
        return r1;
    L_0x00cf:
        r7 = 0;
        return r7;
    L_0x00d1:
        r7 = 0;
        r18 = 0;
        if (r9 != r15) goto L_0x00d8;
    L_0x00d6:
        r9 = 3;
        goto L_0x00f9;
    L_0x00d8:
        return r7;
    L_0x00d9:
        r4 = 6;
        r7 = 0;
        r18 = 0;
        if (r9 != 0) goto L_0x00e2;
    L_0x00df:
        r9 = 1;
        r13 = 1;
        goto L_0x00f9;
    L_0x00e2:
        if (r9 != r5) goto L_0x00e5;
    L_0x00e4:
        goto L_0x00f8;
    L_0x00e5:
        return r7;
    L_0x00e6:
        r7 = 0;
        r18 = 0;
        if (r9 == r15) goto L_0x00f0;
    L_0x00eb:
        r4 = 4;
        if (r9 != r4) goto L_0x00ef;
    L_0x00ee:
        goto L_0x00f0;
    L_0x00ef:
        return r7;
    L_0x00f0:
        r9 = 5;
        goto L_0x00f9;
    L_0x00f2:
        r4 = 6;
        r7 = 0;
        r18 = 0;
        if (r9 != r5) goto L_0x00fd;
    L_0x00f8:
        r9 = 6;
    L_0x00f9:
        r3 = r3 + 1;
        goto L_0x0011;
    L_0x00fd:
        return r7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private boolean isLiteral(char c) throws IOException {
        switch (c) {
            case 9:
            case 10:
            case 12:
            case 13:
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                break;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                checkLenient();
                break;
            default:
                return true;
        }
        return false;
    }

    public String nextName() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 12) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 13) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a name but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextUnquotedValue;
        return nextUnquotedValue;
    }

    public String nextString() throws IOException {
        String nextUnquotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            nextUnquotedValue = nextUnquotedValue();
        } else if (i == 8) {
            nextUnquotedValue = nextQuotedValue('\'');
        } else if (i == 9) {
            nextUnquotedValue = nextQuotedValue('\"');
        } else if (i == 11) {
            nextUnquotedValue = this.peekedString;
            this.peekedString = null;
        } else if (i == 15) {
            nextUnquotedValue = Long.toString(this.peekedLong);
        } else if (i == 16) {
            nextUnquotedValue = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a string but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return nextUnquotedValue;
    }

    public boolean nextBoolean() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        int[] iArr;
        int i2;
        if (i == 5) {
            this.peeked = 0;
            iArr = this.pathIndices;
            i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.peeked = 0;
            iArr = this.pathIndices;
            i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return false;
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a boolean but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public void nextNull() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Expected null but was ");
        stringBuilder.append(peek());
        stringBuilder.append(locationString());
        throw new IllegalStateException(stringBuilder.toString());
    }

    public double nextDouble() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return (double) this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9) {
            this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i != 11) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a double but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.lenient || !(Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("JSON forbids NaN and infinities: ");
        stringBuilder2.append(parseDouble);
        stringBuilder2.append(locationString());
        throw new MalformedJsonException(stringBuilder2.toString());
    }

    public long nextLong() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        int[] iArr;
        int i2;
        if (i == 15) {
            this.peeked = 0;
            iArr = this.pathIndices;
            i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        StringBuilder stringBuilder;
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a long but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j = (long) parseDouble;
        if (((double) j) != parseDouble) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Expected a long but was ");
            stringBuilder.append(this.peekedString);
            stringBuilder.append(locationString());
            throw new NumberFormatException(stringBuilder.toString());
        }
        this.peekedString = null;
        this.peeked = 0;
        iArr = this.pathIndices;
        i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return j;
    }

    /* JADX WARNING: Missing block: B:23:0x005b, code skipped:
            if (r1 != null) goto L_0x006b;
     */
    /* JADX WARNING: Missing block: B:24:0x005d, code skipped:
            r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r4) * 2, 16));
     */
    /* JADX WARNING: Missing block: B:25:0x006b, code skipped:
            r1.append(r0, r4, r2 - r4);
            r9.pos = r2;
     */
    private java.lang.String nextQuotedValue(char r10) throws java.io.IOException {
        /*
        r9 = this;
        r0 = r9.buffer;
        r1 = 0;
    L_0x0003:
        r2 = r9.pos;
        r3 = r9.limit;
    L_0x0007:
        r4 = r2;
    L_0x0008:
        r5 = 16;
        r6 = 1;
        if (r2 >= r3) goto L_0x005b;
    L_0x000d:
        r7 = r2 + 1;
        r2 = r0[r2];
        if (r2 != r10) goto L_0x0027;
    L_0x0013:
        r9.pos = r7;
        r7 = r7 - r4;
        r7 = r7 - r6;
        if (r1 != 0) goto L_0x001f;
    L_0x0019:
        r10 = new java.lang.String;
        r10.<init>(r0, r4, r7);
        return r10;
    L_0x001f:
        r1.append(r0, r4, r7);
        r10 = r1.toString();
        return r10;
    L_0x0027:
        r8 = 92;
        if (r2 != r8) goto L_0x004e;
    L_0x002b:
        r9.pos = r7;
        r7 = r7 - r4;
        r7 = r7 - r6;
        if (r1 != 0) goto L_0x003f;
    L_0x0031:
        r1 = r7 + 1;
        r1 = r1 * 2;
        r2 = new java.lang.StringBuilder;
        r1 = java.lang.Math.max(r1, r5);
        r2.<init>(r1);
        r1 = r2;
    L_0x003f:
        r1.append(r0, r4, r7);
        r2 = r9.readEscapeCharacter();
        r1.append(r2);
        r2 = r9.pos;
        r3 = r9.limit;
        goto L_0x0007;
    L_0x004e:
        r5 = 10;
        if (r2 != r5) goto L_0x0059;
    L_0x0052:
        r2 = r9.lineNumber;
        r2 = r2 + r6;
        r9.lineNumber = r2;
        r9.lineStart = r7;
    L_0x0059:
        r2 = r7;
        goto L_0x0008;
    L_0x005b:
        if (r1 != 0) goto L_0x006b;
    L_0x005d:
        r1 = r2 - r4;
        r1 = r1 * 2;
        r3 = new java.lang.StringBuilder;
        r1 = java.lang.Math.max(r1, r5);
        r3.<init>(r1);
        r1 = r3;
    L_0x006b:
        r3 = r2 - r4;
        r1.append(r0, r4, r3);
        r9.pos = r2;
        r2 = r9.fillBuffer(r6);
        if (r2 != 0) goto L_0x0003;
    L_0x0078:
        r10 = "Unterminated string";
        r10 = r9.syntaxError(r10);
        throw r10;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextQuotedValue(char):java.lang.String");
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARNING: Missing block: B:13:0x002a, code skipped:
            r0 = r1;
     */
    private java.lang.String nextUnquotedValue() throws java.io.IOException {
        /*
        r5 = this;
        r0 = 0;
        r1 = 0;
        r2 = r1;
    L_0x0003:
        r1 = 0;
    L_0x0004:
        r3 = r5.pos;
        r3 = r3 + r1;
        r4 = r5.limit;
        if (r3 >= r4) goto L_0x001c;
    L_0x000b:
        r3 = r5.buffer;
        r4 = r5.pos;
        r4 = r4 + r1;
        r3 = r3[r4];
        switch(r3) {
            case 9: goto L_0x002a;
            case 10: goto L_0x002a;
            case 12: goto L_0x002a;
            case 13: goto L_0x002a;
            case 32: goto L_0x002a;
            case 35: goto L_0x0018;
            case 44: goto L_0x002a;
            case 47: goto L_0x0018;
            case 58: goto L_0x002a;
            case 59: goto L_0x0018;
            case 61: goto L_0x0018;
            case 91: goto L_0x002a;
            case 92: goto L_0x0018;
            case 93: goto L_0x002a;
            case 123: goto L_0x002a;
            case 125: goto L_0x002a;
            default: goto L_0x0015;
        };
    L_0x0015:
        r1 = r1 + 1;
        goto L_0x0004;
    L_0x0018:
        r5.checkLenient();
        goto L_0x002a;
    L_0x001c:
        r3 = r5.buffer;
        r3 = r3.length;
        if (r1 >= r3) goto L_0x002c;
    L_0x0021:
        r3 = r1 + 1;
        r3 = r5.fillBuffer(r3);
        if (r3 == 0) goto L_0x002a;
    L_0x0029:
        goto L_0x0004;
    L_0x002a:
        r0 = r1;
        goto L_0x004c;
    L_0x002c:
        if (r2 != 0) goto L_0x0039;
    L_0x002e:
        r2 = new java.lang.StringBuilder;
        r3 = 16;
        r3 = java.lang.Math.max(r1, r3);
        r2.<init>(r3);
    L_0x0039:
        r3 = r5.buffer;
        r4 = r5.pos;
        r2.append(r3, r4, r1);
        r3 = r5.pos;
        r3 = r3 + r1;
        r5.pos = r3;
        r1 = 1;
        r1 = r5.fillBuffer(r1);
        if (r1 != 0) goto L_0x0003;
    L_0x004c:
        if (r2 != 0) goto L_0x0058;
    L_0x004e:
        r1 = new java.lang.String;
        r2 = r5.buffer;
        r3 = r5.pos;
        r1.<init>(r2, r3, r0);
        goto L_0x0063;
    L_0x0058:
        r1 = r5.buffer;
        r3 = r5.pos;
        r2.append(r1, r3, r0);
        r1 = r2.toString();
    L_0x0063:
        r2 = r5.pos;
        r2 = r2 + r0;
        r5.pos = r2;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextUnquotedValue():java.lang.String");
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.pos = i3;
                    return;
                } else if (c2 == '\\') {
                    this.pos = i3;
                    readEscapeCharacter();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    if (c2 == 10) {
                        this.lineNumber++;
                        this.lineStart = i3;
                    }
                    i = i3;
                }
            }
            this.pos = i;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i = 0;
            while (this.pos + i < this.limit) {
                switch (this.buffer[this.pos + i]) {
                    case 9:
                    case 10:
                    case 12:
                    case 13:
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        checkLenient();
                        break;
                    default:
                        i++;
                }
                this.pos += i;
                return;
            }
            this.pos += i;
        } while (fillBuffer(1));
    }

    public int nextInt() throws IOException {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        StringBuilder stringBuilder;
        int[] iArr;
        if (i == 15) {
            i = (int) this.peekedLong;
            if (this.peekedLong != ((long) i)) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Expected an int but was ");
                stringBuilder.append(this.peekedLong);
                stringBuilder.append(locationString());
                throw new NumberFormatException(stringBuilder.toString());
            }
            this.peeked = 0;
            iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return i;
        }
        int i3;
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(i == 8 ? '\'' : '\"');
            }
            try {
                i = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                iArr = this.pathIndices;
                i3 = this.stackSize - 1;
                iArr[i3] = iArr[i3] + 1;
                return i;
            } catch (NumberFormatException unused) {
            }
        } else {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Expected an int but was ");
            stringBuilder.append(peek());
            stringBuilder.append(locationString());
            throw new IllegalStateException(stringBuilder.toString());
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        i3 = (int) parseDouble;
        if (((double) i3) != parseDouble) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("Expected an int but was ");
            stringBuilder.append(this.peekedString);
            stringBuilder.append(locationString());
            throw new NumberFormatException(stringBuilder.toString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i4 = this.stackSize - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return i3;
    }

    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public void skipValue() throws IOException {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            if (i2 == 3) {
                push(1);
                i++;
            } else if (i2 == 1) {
                push(3);
                i++;
            } else if (i2 == 4) {
                this.stackSize--;
                i--;
            } else if (i2 == 2) {
                this.stackSize--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                skipUnquotedValue();
            } else if (i2 == 8 || i2 == 12) {
                skipQuotedValue('\'');
            } else if (i2 == 9 || i2 == 13) {
                skipQuotedValue('\"');
            } else if (i2 == 16) {
                this.pos += this.peekedNumberLength;
            }
            this.peeked = 0;
        } while (i != 0);
        int[] iArr = this.pathIndices;
        i = this.stackSize - 1;
        iArr[i] = iArr[i] + 1;
        this.pathNames[this.stackSize - 1] = "null";
    }

    private void push(int i) {
        int[] iArr;
        if (this.stackSize == this.stack.length) {
            iArr = new int[(this.stackSize * 2)];
            int[] iArr2 = new int[(this.stackSize * 2)];
            String[] strArr = new String[(this.stackSize * 2)];
            System.arraycopy(this.stack, 0, iArr, 0, this.stackSize);
            System.arraycopy(this.pathIndices, 0, iArr2, 0, this.stackSize);
            System.arraycopy(this.pathNames, 0, strArr, 0, this.stackSize);
            this.stack = iArr;
            this.pathIndices = iArr2;
            this.pathNames = strArr;
        }
        iArr = this.stack;
        int i2 = this.stackSize;
        this.stackSize = i2 + 1;
        iArr[i2] = i;
    }

    private boolean fillBuffer(int i) throws IOException {
        char[] cArr = this.buffer;
        this.lineStart -= this.pos;
        if (this.limit != this.pos) {
            this.limit -= this.pos;
            System.arraycopy(cArr, this.pos, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            int read = this.in.read(cArr, this.limit, cArr.length - this.limit);
            if (read == -1) {
                return false;
            }
            this.limit += read;
            if (this.lineNumber == 0 && this.lineStart == 0 && this.limit > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart++;
                i++;
            }
        } while (this.limit < i);
        return true;
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (fillBuffer(1)) {
                    i = this.pos;
                    i2 = this.limit;
                } else if (!z) {
                    return -1;
                } else {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("End of input");
                    stringBuilder.append(locationString());
                    throw new EOFException(stringBuilder.toString());
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == 10) {
                this.lineNumber++;
                this.lineStart = i3;
            } else if (!(c == ' ' || c == 13 || c == 9)) {
                if (c == '/') {
                    this.pos = i3;
                    if (i3 == i2) {
                        this.pos--;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c;
                        }
                    }
                    checkLenient();
                    char c2 = cArr[this.pos];
                    if (c2 == '*') {
                        this.pos++;
                        if (skipTo("*/")) {
                            i = this.pos + 2;
                            i2 = this.limit;
                        } else {
                            throw syntaxError("Unterminated comment");
                        }
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.pos++;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                    }
                } else if (c == '#') {
                    this.pos = i3;
                    checkLenient();
                    skipToEndOfLine();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    this.pos = i3;
                    return c;
                }
            }
            i = i3;
        }
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + 1;
                c = cArr[i];
                if (c == 10) {
                    this.lineNumber++;
                    this.lineStart = this.pos;
                    return;
                }
            } else {
                return;
            }
        } while (c != 13);
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            int i = 0;
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            if (this.buffer[this.pos] == 10) {
                this.lineNumber++;
                this.lineStart = this.pos + 1;
            } else {
                while (i < length) {
                    if (this.buffer[this.pos + i] == str.charAt(i)) {
                        i++;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append(locationString());
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: 0000 */
    public String locationString() {
        int i = this.lineNumber + 1;
        int i2 = (this.pos - this.lineStart) + 1;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" at line ");
        stringBuilder.append(i);
        stringBuilder.append(" column ");
        stringBuilder.append(i2);
        stringBuilder.append(" path ");
        stringBuilder.append(getPath());
        return stringBuilder.toString();
    }

    public String getPath() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append('$');
        int i = this.stackSize;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.stack[i2]) {
                case 1:
                case 2:
                    stringBuilder.append('[');
                    stringBuilder.append(this.pathIndices[i2]);
                    stringBuilder.append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    stringBuilder.append('.');
                    if (this.pathNames[i2] == null) {
                        break;
                    }
                    stringBuilder.append(this.pathNames[i2]);
                    break;
                default:
                    break;
            }
        }
        return stringBuilder.toString();
    }

    private char readEscapeCharacter() throws IOException {
        if (this.pos != this.limit || fillBuffer(1)) {
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            char c = cArr[i];
            if (c == 10) {
                this.lineNumber++;
                this.lineStart = this.pos;
            } else if (!(c == '\"' || c == '\'' || c == '/' || c == '\\')) {
                if (c == 'b') {
                    return 8;
                }
                if (c == 'f') {
                    return 12;
                }
                if (c == 'n') {
                    return 10;
                }
                if (c == 'r') {
                    return 13;
                }
                switch (c) {
                    case 't':
                        return 9;
                    case 'u':
                        if (this.pos + 4 <= this.limit || fillBuffer(4)) {
                            int i2 = 0;
                            int i3 = this.pos;
                            int i4 = i3 + 4;
                            while (i3 < i4) {
                                int i5;
                                char c2 = this.buffer[i3];
                                c = (char) (i2 << 4);
                                if (c2 >= '0' && c2 <= '9') {
                                    i5 = c2 - 48;
                                } else if (c2 >= 'a' && c2 <= 'f') {
                                    i5 = (c2 - 97) + 10;
                                } else if (c2 < 'A' || c2 > 'F') {
                                    StringBuilder stringBuilder = new StringBuilder();
                                    stringBuilder.append("\\u");
                                    stringBuilder.append(new String(this.buffer, this.pos, 4));
                                    throw new NumberFormatException(stringBuilder.toString());
                                } else {
                                    i5 = (c2 - 65) + 10;
                                }
                                i2 = (char) (c + i5);
                                i3++;
                            }
                            this.pos += 4;
                            return i2;
                        }
                        throw syntaxError("Unterminated escape sequence");
                    default:
                        throw syntaxError("Invalid escape sequence");
                }
            }
            return c;
        }
        throw syntaxError("Unterminated escape sequence");
    }

    private IOException syntaxError(String str) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(locationString());
        throw new MalformedJsonException(stringBuilder.toString());
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        this.pos--;
        if (this.pos + NON_EXECUTE_PREFIX.length <= this.limit || fillBuffer(NON_EXECUTE_PREFIX.length)) {
            int i = 0;
            while (i < NON_EXECUTE_PREFIX.length) {
                if (this.buffer[this.pos + i] == NON_EXECUTE_PREFIX[i]) {
                    i++;
                } else {
                    return;
                }
            }
            this.pos += NON_EXECUTE_PREFIX.length;
        }
    }
}
