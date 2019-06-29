package com.google.inject.internal;

import com.google.inject.Scope;
import com.google.inject.spi.ScopeBinding;
import org.roboguice.shaded.goole.common.base.Preconditions;

final class ScopeBindingProcessor extends AbstractProcessor {
    ScopeBindingProcessor(Errors errors) {
        super(errors);
    }

    public Boolean visit(ScopeBinding scopeBinding) {
        Scope scope = (Scope) Preconditions.checkNotNull(scopeBinding.getScope(), "scope");
        Class cls = (Class) Preconditions.checkNotNull(scopeBinding.getAnnotationType(), "annotation type");
        if (!Annotations.isScopeAnnotation(cls)) {
            this.errors.missingScopeAnnotation(cls);
        }
        if (!Annotations.isRetainedAtRuntime(cls)) {
            this.errors.missingRuntimeRetention(cls);
        }
        ScopeBinding scopeBinding2 = this.injector.state.getScopeBinding(cls);
        if (scopeBinding2 == null) {
            this.injector.state.putScopeBinding(cls, scopeBinding);
        } else if (!scope.equals(scopeBinding2.getScope())) {
            this.errors.duplicateScopes(scopeBinding2, cls, scope);
        }
        return Boolean.valueOf(true);
    }
}
