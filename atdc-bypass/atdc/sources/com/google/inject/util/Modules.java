package com.google.inject.util;

import com.google.inject.AbstractModule;
import com.google.inject.Binder;
import com.google.inject.Binding;
import com.google.inject.Key;
import com.google.inject.Module;
import com.google.inject.PrivateBinder;
import com.google.inject.Scope;
import com.google.inject.internal.Errors;
import com.google.inject.spi.DefaultBindingScopingVisitor;
import com.google.inject.spi.DefaultElementVisitor;
import com.google.inject.spi.Element;
import com.google.inject.spi.Elements;
import com.google.inject.spi.PrivateElements;
import com.google.inject.spi.ScopeBinding;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Iterables;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Maps;
import org.roboguice.shaded.goole.common.collect.Sets;

public final class Modules {
    public static final Module EMPTY_MODULE = new EmptyModule();

    public interface OverriddenModuleBuilder {
        Module with(Iterable<? extends Module> iterable);

        Module with(Module... moduleArr);
    }

    private static class CombinedModule implements Module {
        final Set<Module> modulesSet;

        CombinedModule(Iterable<? extends Module> iterable) {
            this.modulesSet = ImmutableSet.copyOf((Iterable) iterable);
        }

        public void configure(Binder binder) {
            binder = binder.skipSources(getClass());
            for (Module install : this.modulesSet) {
                binder.install(install);
            }
        }
    }

    private static class EmptyModule implements Module {
        public void configure(Binder binder) {
        }

        private EmptyModule() {
        }
    }

    private static final class RealOverriddenModuleBuilder implements OverriddenModuleBuilder {
        private final ImmutableSet<Module> baseModules;

        private RealOverriddenModuleBuilder(Iterable<? extends Module> iterable) {
            this.baseModules = ImmutableSet.copyOf((Iterable) iterable);
        }

        public Module with(Module... moduleArr) {
            return with(Arrays.asList(moduleArr));
        }

        public Module with(Iterable<? extends Module> iterable) {
            return new OverrideModule(iterable, this.baseModules);
        }
    }

    private static class ModuleWriter extends DefaultElementVisitor<Void> {
        protected final Binder binder;

        ModuleWriter(Binder binder) {
            this.binder = binder.skipSources(getClass());
        }

        /* Access modifiers changed, original: protected */
        public Void visitOther(Element element) {
            element.applyTo(this.binder);
            return null;
        }

        /* Access modifiers changed, original: 0000 */
        public void writeAll(Iterable<? extends Element> iterable) {
            for (Element acceptVisitor : iterable) {
                acceptVisitor.acceptVisitor(this);
            }
        }
    }

    static class OverrideModule extends AbstractModule {
        private final ImmutableSet<Module> baseModules;
        private final ImmutableSet<Module> overrides;

        OverrideModule(Iterable<? extends Module> iterable, ImmutableSet<Module> immutableSet) {
            this.overrides = ImmutableSet.copyOf((Iterable) iterable);
            this.baseModules = immutableSet;
        }

        public void configure() {
            Binder binder = binder();
            Collection elements = Elements.getElements(currentStage(), this.baseModules);
            if (elements.size() == 1) {
                Element element = (Element) Iterables.getOnlyElement(elements);
                if (element instanceof PrivateElements) {
                    PrivateElements privateElements = (PrivateElements) element;
                    binder = binder.newPrivateBinder().withSource(privateElements.getSource());
                    for (Key key : privateElements.getExposedKeys()) {
                        binder.withSource(privateElements.getExposedSource(key)).expose(key);
                    }
                    elements = privateElements.getElements();
                }
            }
            binder = binder.skipSources(getClass());
            LinkedHashSet linkedHashSet = new LinkedHashSet(elements);
            List elements2 = Elements.getElements(currentStage(), this.overrides);
            final HashSet newHashSet = Sets.newHashSet();
            final HashMap newHashMap = Maps.newHashMap();
            new ModuleWriter(binder) {
                public <T> Void visit(Binding<T> binding) {
                    newHashSet.add(binding.getKey());
                    return (Void) super.visit((Binding) binding);
                }

                public Void visit(ScopeBinding scopeBinding) {
                    newHashMap.put(scopeBinding.getAnnotationType(), scopeBinding);
                    return (Void) super.visit(scopeBinding);
                }

                public Void visit(PrivateElements privateElements) {
                    newHashSet.addAll(privateElements.getExposedKeys());
                    return (Void) super.visit(privateElements);
                }
            }.writeAll(elements2);
            final HashMap newHashMap2 = Maps.newHashMap();
            ArrayList newArrayList = Lists.newArrayList();
            final HashMap hashMap = newHashMap2;
            final ArrayList arrayList = newArrayList;
            new ModuleWriter(binder) {
                public <T> Void visit(Binding<T> binding) {
                    if (!newHashSet.remove(binding.getKey())) {
                        super.visit((Binding) binding);
                        Scope access$200 = OverrideModule.this.getScopeInstanceOrNull(binding);
                        if (access$200 != null) {
                            List list = (List) hashMap.get(access$200);
                            if (list == null) {
                                list = Lists.newArrayList();
                                hashMap.put(access$200, list);
                            }
                            list.add(binding.getSource());
                        }
                    }
                    return null;
                }

                /* Access modifiers changed, original: 0000 */
                public void rewrite(Binder binder, PrivateElements privateElements, Set<Key<?>> set) {
                    PrivateBinder newPrivateBinder = binder.withSource(privateElements.getSource()).newPrivateBinder();
                    HashSet newHashSet = Sets.newHashSet();
                    for (Key key : privateElements.getExposedKeys()) {
                        if (set.remove(key)) {
                            newHashSet.add(key);
                        } else {
                            newPrivateBinder.withSource(privateElements.getExposedSource(key)).expose(key);
                        }
                    }
                    for (Element element : privateElements.getElements()) {
                        if (!(element instanceof Binding) || !newHashSet.remove(((Binding) element).getKey())) {
                            if (element instanceof PrivateElements) {
                                rewrite(newPrivateBinder, (PrivateElements) element, newHashSet);
                            } else {
                                element.applyTo(newPrivateBinder);
                            }
                        }
                    }
                }

                public Void visit(PrivateElements privateElements) {
                    rewrite(this.binder, privateElements, newHashSet);
                    return null;
                }

                public Void visit(ScopeBinding scopeBinding) {
                    arrayList.add(scopeBinding);
                    return null;
                }
            }.writeAll(linkedHashSet);
            new ModuleWriter(binder) {
                public Void visit(ScopeBinding scopeBinding) {
                    ScopeBinding scopeBinding2 = (ScopeBinding) newHashMap.remove(scopeBinding.getAnnotationType());
                    if (scopeBinding2 == null) {
                        super.visit(scopeBinding);
                    } else {
                        List list = (List) newHashMap2.get(scopeBinding.getScope());
                        if (list != null) {
                            StringBuilder stringBuilder = new StringBuilder("The scope for @%s is bound directly and cannot be overridden.");
                            StringBuilder stringBuilder2 = new StringBuilder();
                            stringBuilder2.append("%n     original binding at ");
                            stringBuilder2.append(Errors.convert(scopeBinding.getSource()));
                            stringBuilder.append(stringBuilder2.toString());
                            for (Object next : list) {
                                StringBuilder stringBuilder3 = new StringBuilder();
                                stringBuilder3.append("%n     bound directly at ");
                                stringBuilder3.append(Errors.convert(next));
                                stringBuilder3.append("");
                                stringBuilder.append(stringBuilder3.toString());
                            }
                            this.binder.withSource(scopeBinding2.getSource()).addError(stringBuilder.toString(), scopeBinding.getAnnotationType().getSimpleName());
                        }
                    }
                    return null;
                }
            }.writeAll(newArrayList);
        }

        private Scope getScopeInstanceOrNull(Binding<?> binding) {
            return (Scope) binding.acceptScopingVisitor(new DefaultBindingScopingVisitor<Scope>() {
                public Scope visitScope(Scope scope) {
                    return scope;
                }
            });
        }
    }

    private Modules() {
    }

    public static OverriddenModuleBuilder override(Module... moduleArr) {
        return new RealOverriddenModuleBuilder(Arrays.asList(moduleArr));
    }

    public static OverriddenModuleBuilder override(Iterable<? extends Module> iterable) {
        return new RealOverriddenModuleBuilder(iterable);
    }

    public static Module combine(Module... moduleArr) {
        return combine(ImmutableSet.copyOf((Object[]) moduleArr));
    }

    public static Module combine(Iterable<? extends Module> iterable) {
        return new CombinedModule(iterable);
    }
}
