import 'package:flutter/material.dart';
import 'package:credpal_test/util/app_colors.dart';

class Merchant {
  final String name;
  final String logoUrl;
  final Color backgroundColor;
  final bool hasGreenDot;

  const Merchant({
    required this.name,
    required this.logoUrl,
    required this.backgroundColor,
    this.hasGreenDot = true,
  });

  static const List<Merchant> sampleMerchants = [
    Merchant(name: 'Justrite', logoUrl: 'justrite.png', backgroundColor: k060065),
    Merchant(name: 'Orile Restaurant', logoUrl: 'orile.png', backgroundColor: k010101),
    Merchant(name: 'Slot', logoUrl: 'slot.png', backgroundColor: kEE3336),
    Merchant(name: 'Pointek', logoUrl: 'pointek.png', backgroundColor: k0077C9),
    Merchant(name: 'ogabassey', logoUrl: 'ogabassey.png', backgroundColor: Colors.white),
    Merchant(name: 'Casper Stores', logoUrl: 'casper.png', backgroundColor: kFE2B5E),
    Merchant(name: 'Dreamworks', logoUrl: 'dreamworks.png', backgroundColor: k3F4195),
    Merchant(name: 'Hubmart', logoUrl: 'hubmart.png', backgroundColor: Colors.black),
    Merchant(name: 'Just Used', logoUrl: 'just-used.png', backgroundColor: k13AFEE),
    Merchant(name: 'Just fones', logoUrl: 'just-fones.png', backgroundColor: Colors.black),
  ];
}
