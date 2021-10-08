package com.fernandocejas.mpp

import kotlinx.serialization.Serializable

@Serializable
data class User(val name: String, val email: String)
