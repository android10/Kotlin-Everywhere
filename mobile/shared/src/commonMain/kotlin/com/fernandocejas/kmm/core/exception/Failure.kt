package com.fernandocejas.kmm.core.exception

/**
 * Base Class for handling errors/failures/exceptions.
 * Every feature specific failure should extend [FeatureFailure] class.
 */
sealed class Failure(val message: String = UNKNOWN) {

    /** Extend this class for feature specific failures. */
    abstract class FeatureFailure(errorMessage: String) : Failure(errorMessage)

    companion object {
        const val UNKNOWN = "Dammit! Something really went wrong :(."
    }
}