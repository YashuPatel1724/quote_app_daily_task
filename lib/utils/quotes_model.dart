class QuoteModel {
  String? quote;
  String? author;

  QuoteModel({this.quote, this.author});
  List<QuoteModel> quotesModelList = [];

  factory QuoteModel.fromQuote(Map m1)
  {
    return QuoteModel(quote: m1['quote'] , author: m1['author']);
  }

  QuoteModel.toList(List l1)
  {
    for(int i=0; i<l1.length; i++)
      {
        quotesModelList.add(QuoteModel.fromQuote(l1[i]));
      }
  }
}