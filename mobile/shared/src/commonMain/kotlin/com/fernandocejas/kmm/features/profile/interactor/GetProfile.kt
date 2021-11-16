package com.fernandocejas.kmm.features.profile.interactor

import com.fernandocejas.kmm.core.functional.Either
import com.fernandocejas.kmm.core.interactor.UseCase
import com.fernandocejas.kmm.features.profile.domain.UserProfile

class GetProfile : UseCase<UserProfile, UseCase.None>() {
    override suspend fun run(params: None) =
        Either.Right(UserProfile("Fernando Cejas", "me@fernandocejas.com"))
}
