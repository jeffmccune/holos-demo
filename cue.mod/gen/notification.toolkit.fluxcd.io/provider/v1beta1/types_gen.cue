// Code generated by timoni. DO NOT EDIT.

//timoni:generate timoni vendor crd -f /Users/jeff/Holos/bank-of-holos/tmp/flux/crds.yaml

package v1beta1

import "strings"

// Provider is the Schema for the providers API
#Provider: {
	// APIVersion defines the versioned schema of this representation
	// of an object.
	// Servers should convert recognized schemas to the latest
	// internal value, and
	// may reject unrecognized values.
	// More info:
	// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
	apiVersion: "notification.toolkit.fluxcd.io/v1beta1"

	// Kind is a string value representing the REST resource this
	// object represents.
	// Servers may infer this from the endpoint the client submits
	// requests to.
	// Cannot be updated.
	// In CamelCase.
	// More info:
	// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
	kind: "Provider"
	metadata!: {
		name!: strings.MaxRunes(253) & strings.MinRunes(1) & {
			string
		}
		namespace!: strings.MaxRunes(63) & strings.MinRunes(1) & {
			string
		}
		labels?: {
			[string]: string
		}
		annotations?: {
			[string]: string
		}
	}

	// ProviderSpec defines the desired state of Provider
	spec!: #ProviderSpec
}

// ProviderSpec defines the desired state of Provider
#ProviderSpec: {
	// HTTP/S webhook address of this provider
	address?: =~"^(http|https)://"
	certSecretRef?: {
		// Name of the referent.
		name: string
	}

	// Alert channel for this provider
	channel?: string

	// HTTP/S address of the proxy
	proxy?: =~"^(http|https)://"
	secretRef?: {
		// Name of the referent.
		name: string
	}

	// This flag tells the controller to suspend subsequent events
	// handling.
	// Defaults to false.
	suspend?: bool

	// Timeout for sending alerts to the provider.
	timeout?: =~"^([0-9]+(\\.[0-9]+)?(ms|s|m))+$"

	// Type of provider
	type: "slack" | "discord" | "msteams" | "rocket" | "generic" | "generic-hmac" | "github" | "gitlab" | "bitbucket" | "azuredevops" | "googlechat" | "webex" | "sentry" | "azureeventhub" | "telegram" | "lark" | "matrix" | "opsgenie" | "alertmanager" | "grafana" | "githubdispatch"

	// Bot username for this provider
	username?: string
}
