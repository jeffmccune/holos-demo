// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go sigs.k8s.io/kustomize/api/types

package types

// Var represents a variable whose value will be sourced
// from a field in a Kubernetes object.
#Var: {
	// Value of identifier name e.g. FOO used in container args, annotations
	// Appears in pod template as $(FOO)
	name: string @go(Name)

	// ObjRef must refer to a Kubernetes resource under the
	// purview of this kustomization. ObjRef should use the
	// raw name of the object (the name specified in its YAML,
	// before addition of a namePrefix and a nameSuffix).
	objref: #Target @go(ObjRef)

	// FieldRef refers to the field of the object referred to by
	// ObjRef whose value will be extracted for use in
	// replacing $(FOO).
	// If unspecified, this defaults to fieldPath: $defaultFieldPath
	fieldref?: #FieldSelector @go(FieldRef)
}

// Target refers to a kubernetes object by Group, Version, Kind and Name
// gvk.Gvk contains Group, Version and Kind
// APIVersion is added to keep the backward compatibility of using ObjectReference
// for Var.ObjRef
#Target: {
	apiVersion?: string @go(APIVersion)
	name?:        string @go(Name)
	namespace?:  string @go(Namespace)
}

// FieldSelector contains the fieldPath to an object field.
// This struct is added to keep the backward compatibility of using ObjectFieldSelector
// for Var.FieldRef
#FieldSelector: {
	fieldPath?: string @go(FieldPath)
}

// byName is a sort interface which sorts Vars by name alphabetically
_#byName: [...#Var]
