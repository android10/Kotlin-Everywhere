package com.fernandocejas.kmm.core.functional

import com.fernandocejas.kmm.UnitTest
import org.amshove.kluent.shouldBe
import org.amshove.kluent.shouldBeEqualTo
import kotlin.test.Test

class EitherTest : UnitTest() {

    private lateinit var either: Either<Int, String>

    @Test
    fun `given fold is called, when either is Right, applies fnR and returns its result`() {
        either = Either.Right("Success")
        val result = either.fold({ fail("Shouldn't be executed") }) { 5 }

        result shouldBe 5
    }

    @Test
    fun `given fold is called, when either is Left, applies fnL and returns its result`() {
        either = Either.Left(12)

        val foldResult = "Fold Result"
        val result = either.fold({ foldResult }) { fail("Shouldn't be executed") }

        result shouldBe foldResult
    }

//    @Test
//    fun `given coFold is called, when either is Right, applies fnR and returns its result`() {
//        runBlocking {
//            either = Either.Right("Success")
//            val result = either.coFold({ fail("Shouldn't be executed") }) { "hello" }
//
//            result shouldBe "hello"
//        }
//    }

//    @Test
//    fun `given coFold is called, when either is Left, applies fnL and returns its result`() {
//        runBlocking {
//            either = Either.Left(12)
//
//            val foldResult = "Fold Result"
//            val result = either.coFold({ foldResult }) { fail("Shouldn't be executed") }
//
//            result shouldBe foldResult
//        }
//    }

    @Test
    fun `given flatMap is called, when either is Left, doesn't invoke function and returns original Either`() {
        either = Either.Left(12)

        val result: Either<Int, Int> = either.flatMap {
            fail("Shouldn't be executed")
        }

        result.isLeft shouldBe true
        result shouldBeEqualTo either
    }

//    @Test
//    fun `given coFlatMap is called, when either is Left, doesn't invoke function and returns original Either`() {
//        runBlocking {
//            either = Either.Left(12)
//
//            val result: Either<Int, Int> = either.coFlatMap {
//                fail("Shouldn't be executed")
//            }
//
//            result.isLeft shouldBe true
//            result shouldBeEqualTo either
//        }
//    }

    @Test
    fun `given onFailure is called, when either is Right, doesn't invoke function and returns original Either`() {
        val success = "Success"
        either = Either.Right(success)

        val result = either.onFailure { fail("Shouldn't be executed") }

        result shouldBe either
        either.getOrElse("Failure") shouldBe success
    }

    @Test
    fun `given onFailure is called, when either is Left, invokes function with left value and returns original Either`() {
        either = Either.Left(12)

        var methodCalled = false
        val result = either.onFailure {
            it shouldBe 12
            methodCalled = true
        }

        result shouldBe either
        methodCalled shouldBe true
    }

    @Test
    fun `given onSuccess is called, when either is Right, invokes function with right value and returns original Either`() {
        val success = "Success"
        either = Either.Right(success)

        var methodCalled = false
        val result = either.onSuccess {
            it shouldBeEqualTo success
            methodCalled = true
        }

        result shouldBe either
        methodCalled shouldBe true
    }

    @Test
    fun `given onSuccess is called, when either is Left, doesn't invoke function and returns original Either`() {
        either = Either.Left(12)

        val result = either.onSuccess {
            fail("Shouldn't be executed")
        }

        result shouldBe either
    }

    @Test
    fun `given map is called, when either is Right, invokes function with right value and returns a new Either`() {
        val success = "Success"
        val resultValue = "Result"
        either = Either.Right(success)

        val result = either.map {
            it shouldBe success
            resultValue
        }

        result shouldBeEqualTo Either.Right(resultValue)
    }

    @Test
    fun `given map is called, when either is Left, doesn't invoke function and returns original Either`() {
        either = Either.Left(12)

        val result = either.map {
            fail("Shouldn't be executed")
        }

        result.isLeft shouldBe true
        result shouldBeEqualTo either
    }

//    @Test
//    fun `given coMap is called, when either is Right, invokes function with right value and returns a new Either`() {
//        runBlocking {
//            val success = "Success"
//            val resultValue = "Result"
//            either = Either.Right(success)
//
//            val result = either.coMap {
//                it shouldBe success
//                resultValue
//            }
//
//            result shouldBeEqualTo Either.Right(resultValue)
//        }
//    }
//
//    @Test
//    fun `given coMap is called, when either is Left, doesn't invoke function and returns original Either`() {
//        runBlocking {
//            either = Either.Left(12)
//
//            val result = either.coMap {
//                fail("Shouldn't be executed")
//            }
//
//            result.isLeft shouldBe true
//            result shouldBeEqualTo either
//        }
//    }
}
