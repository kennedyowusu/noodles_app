import 'package:flutter/material.dart';
import 'package:gobe_app/constants/customize.dart';
import 'package:gobe_app/utils/validations.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        onChanged: (value) {},
        onFieldSubmitted: (value) {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
          } else {}
        },
        validator: searchValidator,
        style: Theme.of(context).textTheme.labelLarge,
        textInputAction: TextInputAction.search,
        decoration: const InputDecoration(
          hintText: "Search...",
          contentPadding: kTextFieldPadding,
          border: kDefaultOutlineInputBorder,
          prefixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: bodyTextColor),
          ),
        ),
      ),
    );
  }
}
