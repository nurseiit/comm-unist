package com.google.inject.internal;

import com.google.inject.ConfigurationException;
import com.google.inject.Stage;
import com.google.inject.spi.InjectionRequest;
import com.google.inject.spi.StaticInjectionRequest;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.Lists;

final class InjectionRequestProcessor extends AbstractProcessor {
    private final Initializer initializer;
    private final List<StaticInjection> staticInjections = Lists.newArrayList();

    private class StaticInjection {
        final InjectorImpl injector;
        ImmutableList<SingleMemberInjector> memberInjectors;
        final StaticInjectionRequest request;
        final Object source;

        public StaticInjection(InjectorImpl injectorImpl, StaticInjectionRequest staticInjectionRequest) {
            this.injector = injectorImpl;
            this.source = staticInjectionRequest.getSource();
            this.request = staticInjectionRequest;
        }

        /* Access modifiers changed, original: 0000 */
        public void validate() {
            Set injectionPoints;
            Errors withSource = InjectionRequestProcessor.this.errors.withSource(this.source);
            try {
                injectionPoints = this.request.getInjectionPoints();
            } catch (ConfigurationException e) {
                withSource.merge(e.getErrorMessages());
                injectionPoints = (Set) e.getPartialValue();
            }
            if (injectionPoints != null) {
                this.memberInjectors = this.injector.membersInjectorStore.getInjectors(injectionPoints, withSource);
            } else {
                this.memberInjectors = ImmutableList.of();
            }
            InjectionRequestProcessor.this.errors.merge(withSource);
        }

        /* Access modifiers changed, original: 0000 */
        public void injectMembers() {
            try {
                this.injector.callInContext(new ContextualCallable<Void>() {
                    public Void call(InternalContext internalContext) {
                        Iterator it = StaticInjection.this.memberInjectors.iterator();
                        while (it.hasNext()) {
                            SingleMemberInjector singleMemberInjector = (SingleMemberInjector) it.next();
                            if (StaticInjection.this.injector.options.stage != Stage.TOOL || singleMemberInjector.getInjectionPoint().isToolable()) {
                                singleMemberInjector.inject(InjectionRequestProcessor.this.errors, internalContext, null);
                            }
                        }
                        return null;
                    }
                });
            } catch (ErrorsException unused) {
                throw new AssertionError();
            }
        }
    }

    InjectionRequestProcessor(Errors errors, Initializer initializer) {
        super(errors);
        this.initializer = initializer;
    }

    public Boolean visit(StaticInjectionRequest staticInjectionRequest) {
        this.staticInjections.add(new StaticInjection(this.injector, staticInjectionRequest));
        return Boolean.valueOf(true);
    }

    public Boolean visit(InjectionRequest<?> injectionRequest) {
        Set injectionPoints;
        try {
            injectionPoints = injectionRequest.getInjectionPoints();
        } catch (ConfigurationException e) {
            this.errors.merge(e.getErrorMessages());
            injectionPoints = (Set) e.getPartialValue();
        }
        this.initializer.requestInjection(this.injector, injectionRequest.getInstance(), null, injectionRequest.getSource(), injectionPoints);
        return Boolean.valueOf(true);
    }

    /* Access modifiers changed, original: 0000 */
    public void validate() {
        for (StaticInjection validate : this.staticInjections) {
            validate.validate();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void injectMembers() {
        for (StaticInjection injectMembers : this.staticInjections) {
            injectMembers.injectMembers();
        }
    }
}
