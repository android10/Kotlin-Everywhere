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
package com.fernandocejas.kmm

/**
 * Base class for Unit tests. Inherit from it to create test cases in isolation
 * where all the collaborators of the subject under test are dummy/mock objects.
 */
@Suppress("UnnecessaryAbstractClass")
abstract class UnitTest {

    fun fail(message: String): Nothing = throw AssertionError(message)
}