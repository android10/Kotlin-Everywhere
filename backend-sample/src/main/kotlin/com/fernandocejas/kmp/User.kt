package com.fernandocejas.kmp

import kotlinx.serialization.Serializable

@Serializable
data class User(val name: String, val email: String)
