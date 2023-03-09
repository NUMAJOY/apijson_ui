class Getappsettings {
  List<Counter>? counter;
  List<Section>? section;
  List<Bank>? bank;
  List<Interval>? interval;

  Getappsettings({this.counter, this.section, this.bank, this.interval});

  Getappsettings.fromJson(Map<String, dynamic> json) {
    if (json['counter'] != null) {
      counter = <Counter>[];
      json['counter'].forEach((v) {
        counter!.add(Counter.fromJson(v));
      });
    }
    if (json['section'] != null) {
      section = <Section>[];
      json['section'].forEach((v) {
        section!.add(Section.fromJson(v));
      });
    }
    if (json['bank'] != null) {
      bank = <Bank>[];
      json['bank'].forEach((v) {
        bank!.add(Bank.fromJson(v));
      });
    }
    if (json['interval'] != null) {
      interval = <Interval>[];
      json['interval'].forEach((v) {
        interval!.add(Interval.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (counter != null) {
      data['counter'] = counter!.map((v) => v.toJson()).toList();
    }
    if (section != null) {
      data['section'] = section!.map((v) => v.toJson()).toList();
    }
    if (bank != null) {
      data['bank'] = bank!.map((v) => v.toJson()).toList();
    }
    if (interval != null) {
      data['interval'] = interval!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Counter {
  int? counterid;
  String? countername;

  Counter({this.counterid, this.countername});

  Counter.fromJson(Map<String, dynamic> json) {
    counterid = json['counterid'];
    countername = json['countername'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['counterid'] = counterid;
    data['countername'] = countername;
    return data;
  }
}

class Section {
  int? sectionid;
  String? sectionname;

  Section({this.sectionid, this.sectionname});

  Section.fromJson(Map<String, dynamic> json) {
    sectionid = json['sectionid'];
    sectionname = json['sectionname'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sectionid'] = sectionid;
    data['sectionname'] = sectionname;
    return data;
  }
}

class Bank {
  int? ledgerid;
  int? bankid;
  String? bankname;

  Bank({this.ledgerid, this.bankid, this.bankname});

  Bank.fromJson(Map<String, dynamic> json) {
    ledgerid = json['ledgerid'];
    bankid = json['bankid'];
    bankname = json['bankname'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['ledgerid'] = ledgerid;
    data['bankid'] = bankid;
    data['bankname'] = bankname;
    return data;
  }
}

class Interval {
  int? intervalid;
  String? refreshtime;

  Interval({this.intervalid, this.refreshtime});

  Interval.fromJson(Map<String, dynamic> json) {
    intervalid = json['intervalid'];
    refreshtime = json['refreshtime'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['intervalid'] = intervalid;
    data['refreshtime'] = refreshtime;
    return data;
  }
}
