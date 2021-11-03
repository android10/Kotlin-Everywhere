package com.fernandocejas.kmm.features.profile.interactor

import com.fernandocejas.kmm.core.functional.Either
import com.fernandocejas.kmm.core.interactor.UseCase

class GetProfile : UseCase<String, UseCase.None>() {
    override suspend fun run(params: None) = Either.Right("Fernando")
}
