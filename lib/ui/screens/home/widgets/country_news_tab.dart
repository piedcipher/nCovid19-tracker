import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ncovidtracker/business/models/ncovid_data.dart';
import 'package:ncovidtracker/business/models/serializers.dart';
import 'package:ncovidtracker/business/states/country_data.dart';
import 'package:url_launcher/url_launcher.dart';

class CountryNewsTab extends StatelessWidget {
  final CountryDataSuccessState successState;

  const CountryNewsTab({
    @required this.successState,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final newsItem = serializers.deserializeWith(
            CountryNewsItem.serializer,
            successState.countryNewsItems.first[
                (successState.countryNewsItems.first.keys.length - 1 - index)
                    .toString()]);

        return ListTile(
          onTap: kIsWeb ||
                  Platform.isWindows ||
                  Platform.isLinux ||
                  Platform.isMacOS
              ? () async {
                  await Clipboard.setData(
                    ClipboardData(
                      text: newsItem.url,
                    ),
                  );
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('URL Copied to Clipboard'),
                    ),
                  );
                }
              : () async {
                  if (await canLaunch(newsItem.url)) await launch(newsItem.url);
                },
          title: Text(
            newsItem.title,
          ),
          subtitle: Text(
            newsItem.time,
          ),
          trailing: Container(
            width: 150,
            child: Image.network(
              newsItem.image,
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
      itemCount: successState.countryNewsItems.first.keys.length,
    );
  }
}
