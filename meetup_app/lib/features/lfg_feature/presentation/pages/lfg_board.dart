import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meetup_app/core/objects/sports.dart';
import 'package:meetup_app/features/lfg_feature/data/models/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/domain/entities/lfg_post.dart';
import 'package:meetup_app/features/lfg_feature/presentation/bloc/club/remote/remote_lfg_post_bloc.dart';
import 'package:meetup_app/features/lfg_feature/presentation/bloc/club/remote/remote_lfg_post_state.dart';
import 'package:meetup_app/features/lfg_feature/presentation/widgets/lfg_post_tile.dart';
import 'package:meetup_app/features/lfg_feature/lfg_filter_bar.dart';

import '../../../../../core/objects/lfg_post.dart';
import '../../../../../core/objects/skill_lvl.dart';

class LFGBoard extends StatelessWidget {
  const LFGBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
      // body: ListView.builder(
      //   itemCount: boardActivity.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return LFGPostTile(
      //         lfgPostEntity: LFGPostEntity(
      //           id: "1",
      //           author: "some guy",
      //           sportType: SportType.volleyball,
      //           location: "Gdansk, Ergo Arena",
      //           publishDate: DateTime.now(),
      //           startDate: DateTime.now(),
      //           endDate: DateTime.now(),
      //           maxPlayers: 14,
      //           title: "gra na pozycjach",
      //           content: "mam 3 wolne miejsca na ergo arene 12.00",
      //           attendeeIds: const ["123", "234", "345"],
      //           skillLevels: const [SkillLevel.amateur, SkillLevel.expert],
      //           likes: const ['123', '232', '2333'],
      //           comments: const ['234','32432','34344'],
      //         ),
      //     );
      //   },
      // ),
      
    );
  }

_buildAppBar(BuildContext context) {
    return AppBar(
      title: Text("LFG Board"),
      actions: [
        IconButton(
          icon: Icon(Icons.filter_alt),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return LFGFilterBar();
                });
          },
        )
      ],
    );
  }

  _buildBody() {
    return BlocBuilder<RemoteLFGPostsBloc, RemoteLFGPostsState>(
      builder: (_, state) {
        if (state is RemoteLFGPostsLoading) {
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteLFGPostsError) {
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteLFGPostsLoaded) {
        return Column(
          children: [
            SizedBox(
              height: 50.0,
              child: Text(
                state.lfgPosts.toString(),
              ),
            ),
            SizedBox(
              height: 800.0,
              child: ListView.builder(
                      itemBuilder: (context,index){
                      return LFGPostTile(
              lfgPostEntity: state.lfgPosts![index],
              //onArticlePressed: (article) => _onArticlePressed(context,article),
                      );
                      },
                      itemCount: state.lfgPosts!.length,
                    ),
            ),
          ],
        );
        
        }
      return const SizedBox();
      },
    );
  }

}
