import 'package:flutter/material.dart';
import 'package:neta_event/Profil/tabProfil.dart';



class BarProfil extends StatefulWidget {
  const BarProfil(
      {Key? key, this.tabIconsList, this.changeIndex, this.addClick})
      : super(key: key);

  final Function(int index)? changeIndex;
  final Function()? addClick;
  final List<TabProfil>? tabIconsList;
  @override
  _BarProfilState createState() => _BarProfilState();
}

class _BarProfilState extends State<BarProfil>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    animationController?.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: <Widget>[
        Expanded(
          child: TabIcons(
              TabProfilData: widget.tabIconsList?[0],
              removeAllSelect: () {
                setRemoveAllSelection(
                    widget.tabIconsList?[0]);
                widget.changeIndex!(0);
              }),
        ),
        Expanded(
          child: TabIcons(
              TabProfilData: widget.tabIconsList?[1],
              removeAllSelect: () {
                setRemoveAllSelection(
                    widget.tabIconsList?[1]);
                widget.changeIndex!(1);
              }),
        ),
        Expanded(
          child: TabIcons(
              TabProfilData: widget.tabIconsList?[2],
              removeAllSelect: () {
                setRemoveAllSelection(
                    widget.tabIconsList?[2]);
                widget.changeIndex!(2);
              }),
        ),
      ],
    );
  }

  void setRemoveAllSelection(TabProfil? tabb) {
    if (!mounted) return;
    setState(() {
      widget.tabIconsList?.forEach((TabProfil tab) {
        tab.isSelected = false;
        if (tabb!.index == tab.index) {
          tab.isSelected = true;
        }
      });
    });
  }
}




class TabIcons extends StatefulWidget {
  const TabIcons({Key? key, this.TabProfilData, this.removeAllSelect})
      : super(key: key);
  final TabProfil? TabProfilData;
  final Function()? removeAllSelect;
  @override
  _TabIconsState createState() => _TabIconsState();
}

class _TabIconsState extends State<TabIcons> with TickerProviderStateMixin {
  @override
  void initState() {
    widget.TabProfilData?.animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        if (!mounted) return;
        widget.removeAllSelect!();
        widget.TabProfilData?.animationController?.reverse();
      }
    });
    super.initState();
  }

  void setAnimation() {
    widget.TabProfilData?.animationController?.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Center(
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            if (!widget.TabProfilData!.isSelected) {
              setAnimation();
            }
          },
          child: IgnorePointer(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                ScaleTransition(
                  alignment: Alignment.center,
                  scale: Tween<double>(begin: 0.88, end: 1.0).animate(
                      CurvedAnimation(
                          parent: widget.TabProfilData!.animationController!,
                          curve:
                          Interval(0.1, 1.0, curve: Curves.fastOutSlowIn))),
                  child: widget.TabProfilData!.isSelected
                      ? widget.TabProfilData!.selectedImagePath
                      : widget.TabProfilData!.imagePath
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

