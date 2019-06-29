package com.google.inject.internal;

import com.google.inject.Stage;
import com.google.inject.spi.DisableCircularProxiesOption;
import com.google.inject.spi.RequireAtInjectOnConstructorsOption;
import com.google.inject.spi.RequireExactBindingAnnotationsOption;
import com.google.inject.spi.RequireExplicitBindingsOption;
import org.roboguice.shaded.goole.common.base.Preconditions;

class InjectorOptionsProcessor extends AbstractProcessor {
    private boolean atInjectRequired = false;
    private boolean disableCircularProxies = false;
    private boolean exactBindingAnnotationsRequired = false;
    private boolean jitDisabled = false;

    InjectorOptionsProcessor(Errors errors) {
        super(errors);
    }

    public Boolean visit(DisableCircularProxiesOption disableCircularProxiesOption) {
        this.disableCircularProxies = true;
        return Boolean.valueOf(true);
    }

    public Boolean visit(RequireExplicitBindingsOption requireExplicitBindingsOption) {
        this.jitDisabled = true;
        return Boolean.valueOf(true);
    }

    public Boolean visit(RequireAtInjectOnConstructorsOption requireAtInjectOnConstructorsOption) {
        this.atInjectRequired = true;
        return Boolean.valueOf(true);
    }

    public Boolean visit(RequireExactBindingAnnotationsOption requireExactBindingAnnotationsOption) {
        this.exactBindingAnnotationsRequired = true;
        return Boolean.valueOf(true);
    }

    /* Access modifiers changed, original: 0000 */
    public InjectorOptions getOptions(Stage stage, InjectorOptions injectorOptions) {
        Preconditions.checkNotNull(stage, "stage must be set");
        if (injectorOptions == null) {
            return new InjectorOptions(stage, this.jitDisabled, this.disableCircularProxies, this.atInjectRequired, this.exactBindingAnnotationsRequired);
        }
        Preconditions.checkState(stage == injectorOptions.stage, "child & parent stage don't match");
        boolean z = this.jitDisabled || injectorOptions.jitDisabled;
        boolean z2 = this.disableCircularProxies || injectorOptions.disableCircularProxies;
        boolean z3 = this.atInjectRequired || injectorOptions.atInjectRequired;
        boolean z4 = this.exactBindingAnnotationsRequired || injectorOptions.exactBindingAnnotationsRequired;
        return new InjectorOptions(stage, z, z2, z3, z4);
    }
}
