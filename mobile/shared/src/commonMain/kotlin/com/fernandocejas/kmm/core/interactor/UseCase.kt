/**
 * Copyright (C) 2021 Fernando Cejas Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.fernandocejas.kmm.core.interactor

/**
 * Abstract class for a Use Case (Interactor in terms of Clean Architecture approach).
 * This abstraction represents an execution unit for different use cases (this means that any use
 * case in the application should implement this contract).
 *
 * By convention each [UseCase] implementation will execute its job in a background thread
 * (kotlin coroutine) and will post the result back in the main thread.
 */
abstract class UseCase<out Type, in Params> where Type : Any {

//    /**
//     * The main function for the execution unit [UseCase]. It basically
//     * follow the rules of a `Command Pattern`.
//     *
//     * Keep in mind that this function should not be called directly,
//     * unless we want an asynchronous call, otherwise use the operator
//     * by not calling explicitly this [UseCase.run] fn.
//     *
//     * @see [UseCase.invoke].
//     */
//    abstract fun run(params: Params): Either<Failure, Type>
//
//    suspend operator fun invoke(params: Params): Either<Failure, Type> =
//        withContext(Dispatchers.Default) { run(params) }

    /**
     * Class that represents None (empty) parameters.
     * Use when the [UseCase] has no extra parameters.
     */
    class None
}
