package com.google.inject.internal;

import com.google.inject.spi.PrivateElements;
import java.util.List;
import org.roboguice.shaded.goole.common.collect.Lists;

final class PrivateElementProcessor extends AbstractProcessor {
    private final List<Builder> injectorShellBuilders = Lists.newArrayList();

    PrivateElementProcessor(Errors errors) {
        super(errors);
    }

    public Boolean visit(PrivateElements privateElements) {
        this.injectorShellBuilders.add(new Builder().parent(this.injector).privateElements(privateElements));
        return Boolean.valueOf(true);
    }

    public List<Builder> getInjectorShellBuilders() {
        return this.injectorShellBuilders;
    }
}
