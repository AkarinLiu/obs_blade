import 'package:flutter/material.dart';
import 'package:obs_blade/views/statistics/widgets/card_header/sort_filter_panel/stat_type_control.dart';

import '../../../../../shared/general/base/divider.dart';
import '../../../../../shared/general/custom_expansion_tile.dart';
import 'amount_entries_control.dart';
import 'exclude_unnamed_checkbox.dart';
import 'favorite_control.dart';
import 'filter_name.dart';
import 'order_row.dart';
import 'statistics_date_range.dart';

const double _kControlsPadding = 14.0;

class SortFilterPanel extends StatelessWidget {
  const SortFilterPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BaseDivider(),
        CustomExpansionTile(
          headerText: 'Expand to sort and filter your statistics',
          headerPadding: const EdgeInsets.all(14.0),
          headerTextStyle: Theme.of(context).textTheme.bodyText2,
          expandedBody: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const BaseDivider(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 14.0,
                    right: 14.0,
                    bottom: 12.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: _kControlsPadding + 8.0),
                      OrderRow(),
                      SizedBox(height: _kControlsPadding),
                      FilterName(),
                      SizedBox(height: _kControlsPadding),
                      StatisticsDateRange(),
                      SizedBox(height: _kControlsPadding + 2.0),
                      FavoriteControl(),
                      SizedBox(height: _kControlsPadding + 2.0),
                      StatTypeControl(),
                      SizedBox(height: _kControlsPadding + 2.0),
                      AmountEntriesControl(),
                      SizedBox(height: 4.0),
                      ExcludeUnnamedCheckbox(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
