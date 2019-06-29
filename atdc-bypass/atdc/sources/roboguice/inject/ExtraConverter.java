package roboguice.inject;

public interface ExtraConverter<FROM, TO> {
    TO convert(FROM from);
}
