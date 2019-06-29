package com.google.inject.spi;

import com.google.inject.TypeLiteral;

public interface TypeConverter {
    Object convert(String str, TypeLiteral<?> typeLiteral);
}
