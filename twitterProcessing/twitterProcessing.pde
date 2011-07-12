Twitter myTwitter;
 
void setup() {
  
  XMLElement xml = new XMLElement(this, "settings.xml");
  
  XMLElement twitterAccount = xml.getChild(0);
  
  String username = twitterAccount.getChild(0).getContent();
  String password = twitterAccount.getChild(1).getContent();
  println(username);
  println(password);
  myTwitter = new Twitter(username, password);
  try {
    Query query = new Query("sandwich");
    query.setRpp(100);
    QueryResult result = myTwitter.search(query);

    ArrayList tweets = (ArrayList) result.getTweets();
 
    for (int i = 0; i < tweets.size(); i++) {
      Tweet t = (Tweet) tweets.get(i);
      String user = t.getFromUser();
      String msg = t.getText();
      Date d = t.getCreatedAt();
      println("Tweet by " + user + " at " + d + ": " + msg);
    };
 
  }
  catch (TwitterException te) {
    println("Couldn't connect: " + te);
  };
};
 
void draw() {
 
};
