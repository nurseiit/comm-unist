package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.Element;
import com.google.inject.spi.MembersInjectorLookup;
import com.google.inject.spi.ProviderLookup;
import java.util.List;
import org.roboguice.shaded.goole.common.collect.Lists;

final class DeferredLookups implements Lookups {
    private final InjectorImpl injector;
    private final List<Element> lookups = Lists.newArrayList();

    DeferredLookups(InjectorImpl injectorImpl) {
        this.injector = injectorImpl;
    }

    /* Access modifiers changed, original: 0000 */
    public void initialize(Errors errors) {
        this.injector.lookups = this.injector;
        new LookupProcessor(errors).process(this.injector, this.lookups);
    }

    public <T> Provider<T> getProvider(Key<T> key) {
        ProviderLookup providerLookup = new ProviderLookup(key, key);
        this.lookups.add(providerLookup);
        return providerLookup.getProvider();
    }

    public <T> MembersInjector<T> getMembersInjector(TypeLiteral<T> typeLiteral) {
        MembersInjectorLookup membersInjectorLookup = new MembersInjectorLookup(typeLiteral, typeLiteral);
        this.lookups.add(membersInjectorLookup);
        return membersInjectorLookup.getMembersInjector();
    }
}
