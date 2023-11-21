import SwiftUI

struct Item3: Identifiable {
    var id: UUID = UUID()
    var imageName: String
    var title: String
    var description: String
}

class Item3ViewModel {
    var items3 = [
        Item3(imageName: "rose", title: "Weeds ID & Control", description: "Weed your garden like a pro"),
        Item3(imageName: "plants", title: "Stay Safe From Toxic Plants", description: "Protect curious kids and pets"),
        Item3(imageName: "flower", title: "Allergy-proof Your Home", description: "Enjoy sneeze-free gardening")
    ]
}

struct RectangleView: View {
    var viewModel3 = Item3ViewModel()
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .bold()
                .padding()
                .font(.title2)
            
            LazyVStack(spacing: 20) {
                ForEach(viewModel3.items3) { item3 in
                    HStack {
                        Image(item3.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 110, height: 140)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        
                        VStack(alignment: .leading) {
                            Text(item3.title)
                                .font(.headline)
                                .bold()
                            
                            Text(item3.description)
                                .font(.subheadline)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            // Azione del pulsante
                        }) {
                            Image(systemName: "chevron.forward")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .foregroundColor(Color.gray.opacity(0.5))
                                .padding(8)
                                .background(Color.gray.opacity(0.3))
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.gray.opacity(0.1))
                                    .frame(width: 350, height: 180))
                }
            }
            .padding()
        }
    }
}

struct ResourceDetail: View {
    let videoURL = "https://www.youtube.com/watch?v=VIDEO_ID_HERE" // Sostituisci "VIDEO_ID_HERE" con l'ID del video di YouTube

    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("How to Headspace")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("video - 2 min")
                    .font(.subheadline)
                
                Image("headspace1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
                
                Button(action: {
                    openYouTubeVideo()
                }) {
                    HStack {
                        Image(systemName: "play.fill")
                            .font(.title)
                            .foregroundColor(.white)
                        
                        Text("Play Video")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                }
                .buttonStyle(PlainButtonStyle())
                .accessibilityLabel("Play YouTube Video")
                
                RectangleView(text: "Explore more about meditation")
            }
        }
    }
    
    func openYouTubeVideo() {
        if let url = URL(string: videoURL) {
            UIApplication.shared.open(url)
        }
    }
}

struct ResourceDetail_Previews: PreviewProvider {
    static var previews: some View {
        ResourceDetail()
    }
}
