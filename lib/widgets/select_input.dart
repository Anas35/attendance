import 'package:attendance/styles.dart';
import 'package:attendance/widgets/loading.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class SelectInput<T> extends StatelessWidget {

  const SelectInput({super.key, required this.hintText, this.items = const [], this.onChanged, this.value, this.validator});

  final String hintText;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final T? value;
  final String? Function(T?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DropdownButtonFormField2<T>(
        value: value,
        hint: Text(hintText),
        dropdownPadding: EdgeInsets.zero,
        dropdownDecoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        offset: const Offset(0.0, -15.0),
        itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        buttonPadding: const EdgeInsets.only(right: 8.0),
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 12.0),
          border: OutlineInputBorder(),
          filled: true,
          fillColor: textFieldColor,
        ),
        itemHeight: 154.0,
        validator: validator,
        items: items,
        onChanged: onChanged,
      ),
    );
  }
}

class SelectAsynInput<T> extends StatefulWidget {
  const SelectAsynInput({
    this.validator, 
    this.onChanged,
    super.key, 
    required this.data, 
    this.itemAsString,
    this.selectedItem,
    this.enabled = true,
  });

  final Future<List<T>> data;
  final T? selectedItem;
  final bool enabled;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;
  final String Function(T)? itemAsString;

  @override
  State<SelectAsynInput<T>> createState() => _SelectAsynInputState<T>();
}

class _SelectAsynInputState<T> extends State<SelectAsynInput<T>> {

  bool opened = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
      child: DropdownSearch<T>(
        enabled: widget.enabled,
        selectedItem: widget.selectedItem,
        onChanged: widget.onChanged,
        validator: widget.validator,
        itemAsString: widget.itemAsString,
        popupProps: PopupProps.menu(
          onDismissed: () {
            setState(() {
              opened = false;
            });        
          },
          fit: FlexFit.loose,
          menuProps: const MenuProps(
            backgroundColor: Colors.transparent,
          ),
          scrollbarProps: const ScrollbarProps(
            thumbColor: darkTextColor,
            thickness: 5.0
          ),
          containerBuilder: (context, popupWidget) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 10.0),
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: textFieldColor,
                    ),
                    child: popupWidget,
                  ),
                ),
              ],
            );
          },
          loadingBuilder: (context, _) {
            return Shimmer(
              child: Column(
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 8.0, 30.0, 8.0),
                    child: ShimmerLoading(
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: darkGrey,
                        ),
                        height: 24.0,
                      ),
                    ),
                  );
                }),
              ),
            );
          },
          constraints: const BoxConstraints(maxHeight: 174.0),
          errorBuilder: (_, __, exception) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('$exception'),
              ),
            );
          },
        ),
        dropdownButtonProps: DropdownButtonProps(
          icon: Icon(opened ? Icons.arrow_drop_up_sharp : Icons.arrow_drop_down_sharp),
          iconSize: 32.0,
        ),
        onBeforePopupOpening: (_) {
          setState(() {
            opened = true;
          });
          return Future.value(true);
        },
        dropdownDecoratorProps: DropDownDecoratorProps(
          baseStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: darkTextColor,
          ),
          dropdownSearchDecoration: InputDecoration(
            hintText: 'Select Your $T',
            hintStyle: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: darkTextColor,
            ),
            filled: true,
            fillColor: textFieldColor,
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
        asyncItems: (_) async {
          return await widget.data;
        },
      ),
    );
  }
}
