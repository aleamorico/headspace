//
//  ProvaView.swift
//  Headspace1
//
//  Created by Alessandra Amorico on 17/11/23.
//

import SwiftUI

struct TabBarExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ProvaView()
        }
    }
}

struct PrimaVista: View {
    var body: some View {
        // Sostituisci questo con il contenuto desiderato per la prima scheda
        NavigationView {
            
            
           
            ScrollView {
                
                GreetingView()
                    .padding(.trailing, 190.0)
                
                VStack{
                    
                    //GreetingView()
                        //.padding(.trailing, 130.0)
                    
                    
                    NavigationLink {
                        
                        ResourceDetail()
                    } label: {
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(UIColor.systemGray5))
                                .frame(width: 350, height: 150)
                            HStack{
                                VStack{
                                    Text("How to headspace")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                        .foregroundStyle(.black)
                                    
                                    
                                    Text("Video")
                                        .foregroundStyle(.black)
                                    Text("10 min")
                                        .foregroundStyle(.black)
                                    
                                    
                                    
                                }
                                Image("headspace1")
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                                    .frame(width:150, height: 100)
                                    .padding()
                            }
                            
                        }
                        //finisce zstack
                    }
                }
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(UIColor.systemGray5))
                            .frame(width: 350, height: 150)
                        
                        HStack{
                            VStack{
                                Text("Rooted in the Present")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(.leading, 20.0)
                                Text("Mindful Activity")
                                Text("2 min")
                                
                            }
                           Image("headspace2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                               .frame(width:150, height: 100)
                               .padding()
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(UIColor.systemGray5))
                            .frame(width: 350, height: 150)
                        HStack{
                            VStack{
                                Text("Kindness takes courage")
                                   
                                    .padding(.top)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)
                                    
                                    
                                
                                Text("Video")
                                Text("3-20 min")
                                
                            }
                            Image("headcoffee")
                                 .resizable()
                                 .aspectRatio(contentMode: .fit)
                                 .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                                .frame(width:150, height: 100)
                                .padding()
                        }
                        
                        
                    }
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(UIColor.systemGray5))
                        .frame(width: 350, height: 150)
                    HStack{
                        VStack{
                            Text("Guide to sleep")
                                .font(.title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.leading)
                                .padding(.leading, 20.0)
                                
                            
                            Text("Podcast")
                            Text("45 min")
                            
                        }
                        Image("headsleep")
                             .resizable()
                             .aspectRatio(contentMode: .fit)
                             .clipShape(RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/))
                            .frame(width:150, height: 100)
                            .padding()
                    }
                    
                    
                }
                    
                }
                
                .navigationTitle("Start your day")
                
                .navigationBarItems(trailing: (
                  //  Image(systemName: "clock.arrow.circlepath")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "clock.arrow.circlepath")
                    })
                                    )
                )
            .navigationBarItems(trailing: (
               // Image(systemName: "heart")
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "heart")
                        
                })
            ))
            }
        
        //dobbiano farci tab view todayview
        
            
         
    }
}

struct ProvaView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Primo Tab con la tua vista personalizzata
            PrimaVista()
                .tabItem {
                    Image(systemName: "sun.max.fill")
                                        Text("Today")
                }
                .tag(0)

            // Altre schede con testo di esempio
            Text("Contenuto della scheda 2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                .tag(1)

            Text("Contenuto della scheda 3")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProvaView()
    }
}
