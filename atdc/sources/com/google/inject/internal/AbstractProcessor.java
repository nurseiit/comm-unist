package com.google.inject.internal;

import com.google.inject.spi.DefaultElementVisitor;
import com.google.inject.spi.Element;
import java.util.Iterator;
import java.util.List;

abstract class AbstractProcessor extends DefaultElementVisitor<Boolean> {
    protected Errors errors;
    protected InjectorImpl injector;

    protected AbstractProcessor(Errors errors) {
        this.errors = errors;
    }

    public void process(Iterable<InjectorShell> iterable) {
        for (InjectorShell injectorShell : iterable) {
            process(injectorShell.getInjector(), injectorShell.getElements());
        }
    }

    public void process(InjectorImpl injectorImpl, List<Element> list) {
        Errors errors = this.errors;
        this.injector = injectorImpl;
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Element element = (Element) it.next();
                this.errors = errors.withSource(element.getSource());
                if (((Boolean) element.acceptVisitor(this)).booleanValue()) {
                    it.remove();
                }
            }
        } finally {
            this.errors = errors;
            this.injector = null;
        }
    }

    /* Access modifiers changed, original: protected */
    public Boolean visitOther(Element element) {
        return Boolean.valueOf(false);
    }
}
