package com.fernandocejas.kmm.android

import android.os.Bundle
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.fernandocejas.kmm.RestApi
import com.fernandocejas.kmm.core.functional.getOrElse
import com.fernandocejas.kmm.core.interactor.UseCase
import com.fernandocejas.kmm.features.profile.interactor.GetProfile
import kotlinx.coroutines.DelicateCoroutinesApi
import kotlinx.coroutines.Dispatchers.Main
import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {

    //TODO: Do not use the Global Scope
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val textView: TextView = findViewById(R.id.text_view)
        val editText: EditText = findViewById(R.id.edit_text)

        val getProfile = GetProfile()
//        getProfile(UseCase.None()) {
//            textView.text = it.getOrElse("Failure")
//        }

//        GlobalScope.launch { loadUsers(textView, editText) }
    }

    private fun loadUsers(textView: TextView, editText: EditText) {
        //TODO: Refactor this.
        //TODO: Fix: it only shows the last user
        RestApi().usersList(
            success = { MainScope().launch(Main) { it.forEach { textView.text = it.name } } },
            failure = { MainScope().launch(Main) { editText.setText(it.toString()) } }
        )
    }
}
