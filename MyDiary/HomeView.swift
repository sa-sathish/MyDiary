//
//  HomeView.swift
//  MyDiary
//
//  Created by sathish s on 20/04/2021.
//

import SwiftUI

struct HomeView: View {
    @State var scale: CGFloat = 0.5
    let timer = Timer.publish(every: 1.0, on: .current, in: .common)
    @State var progress = 0.0
    var body: some View {
        VStack{
            HeaderView()
            GeometryReader { bounds in
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                       Text("Mediterranean diet")
                        .font(.body)
                        .foregroundColor(.black)
                        Spacer()
                        HStack(spacing: 5) {
                        Button(action: {
                            print("deatils")
                        }) {
                            Text("Details")
                        }
                            Image(systemName: "arrow.right")
                        }
                    }
                    .padding()
                    
                    VStack(spacing: 10){
                        HStack{
                            
                            VStack(spacing: 10){
                                HStack{
                                    Capsule()
                                        .foregroundColor(Color.blue.opacity(0.5))
                                        .frame(width: 40, height: 3)
                                        .rotationEffect(Angle(degrees: 90))
                                        .padding(.leading, -3)
                                    VStack(spacing: 10){
                                    Text("Eaten")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .foregroundColor(.gray)
                                        .padding(.leading, -40)
                                        HStack(spacing: 5){
                                            
                                            Image(systemName: "rectangle.roundedbottom.fill")
                                                .resizable()
                                                .frame(width: 15, height: 15)
                                                .foregroundColor(.blue)
                                            
                                            Text("1128")
                                                .font(.system(size: 12))
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                            Text("kcal")
                                                .font(.system(size: 12))
                                                .fontWeight(.light)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                }
                                
                                HStack{
                                    Capsule()
                                        .foregroundColor(Color.pink.opacity(0.5))
                                        .frame(width: 40, height: 3)
                                        .rotationEffect(Angle(degrees: 90))
                                        .padding(.leading, -10)
                                    VStack(spacing: 10){
                                    Text("Burned")
                                        .font(.system(size: 15))
                                        .fontWeight(.light)
                                        .foregroundColor(.gray)
                                        .padding(.leading, -25)
                                        HStack(spacing: 5){
                                            
                                            Image(systemName: "rectangle.roundedbottom.fill")
                                                .resizable()
                                                .frame(width: 15, height: 15)
                                                .foregroundColor(.pink)
                                            
                                            Text("102")
                                                .font(.system(size: 12))
                                                .fontWeight(.bold)
                                                .foregroundColor(.black)
                                            Text("kcal")
                                                .font(.system(size: 12))
                                                .fontWeight(.light)
                                                .foregroundColor(.gray)
                                        }
                                    }
                                }
                                Spacer()
                                
                            }
                            .padding(.leading, -15)
                            .padding()
                            
                            Spacer()
                            
                            VStack{
                                
                                
                                    
                                    CircularProgress(percentage: 0.5,
                                                                      fontSize: 13,
                                                                      backgroundColor: .white,
                                                                      fontColor : Color(UIColor(red: 0.25, green: 0.30, blue: 0.82, alpha: 1.00)),
                                                                      borderColor1: Color(UIColor(red: 0.89, green: 0.91, blue: 0.98, alpha: 1.00)),
                                                                      borderColor2: LinearGradient(gradient: Gradient(colors: [Color(UIColor(red: 0.25, green: 0.30, blue: 0.82, alpha: 1.00)), Color(UIColor(red: 0.44, green: 0.56, blue: 1.00, alpha: 1.00))]),startPoint: .top, endPoint: .bottom),
                                                                      borderWidth: 10
                                                      )
                                                      .frame(width: 100, height: 100)
                          
                               
                                Spacer()
                            }
                            
                            .padding()
                        }
                        .padding(.top,10)
                        .frame(height: 120)
                        
                        Divider()
                        HStack(spacing:10){
                            VStack{
                                Text("Carbs")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                
                                LineProgressBar(value: 5.0,
                                                       maxValue: 10,
                                                       backgroundColor: Color.blue.opacity(0.07), foregroundColor: Color.blue)
                                    .frame(width: 50, height:4)
                                Text("12g left")
                                    .font(.system(size: 12))
                                    .fontWeight(.light)
                                    .foregroundColor(.gray)
                                    
                            }
                            .padding()
                            VStack{
                                Text("Protein")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)

                                LineProgressBar(value: 3.0,
                                                       maxValue: 10,
                                                       backgroundColor: Color.pink.opacity(0.07), foregroundColor: Color.pink)
                                    .frame(width: 50, height:4)
                                
                                Text("30g left")
                                    .font(.system(size: 12))
                                    .fontWeight(.light)
                                    .foregroundColor(.gray)
                                    
                            }
                            .padding()
                            VStack{
                                Text("Fat")
                                    .font(.system(size: 15))
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                
                                LineProgressBar(value: 8.0,
                                                       maxValue: 10,
                                                       backgroundColor: Color.yellow.opacity(0.07), foregroundColor: Color.yellow)
                                    .frame(width: 50, height:4)
                                
                                Text("10g left")
                                    .font(.system(size: 12))
                                    .fontWeight(.light)
                                    .foregroundColor(.gray)
                                    
                            }
                            .padding()
                        }
                       
                    }
                    
                    .frame(width: bounds.size.width / 2 * 1.7, height: 250, alignment: .center)
                    .background(RoundedCorners(color: .white, tl: 10, tr: 70, bl: 10, br: 10))
                    .clipped()
                    .shadow(color: Color(UIColor(red: 0.87, green: 0.89, blue: 0.96, alpha: 1.00)), radius: 10, x: 0, y: 0)
                    .scaleEffect(scale)
                                .onAppear {
                                    let baseAnimation = Animation.easeInOut(duration: 0.5)
                                    withAnimation(baseAnimation) {
                                        scale = 1.0
                                    }
                                    
                                }
                    Spacer()

                    HStack {
                       Text("Meals today")
                        .font(.body)
                        .foregroundColor(.black)
                        Spacer()
                        HStack(spacing: 5) {
                        Button(action: {
                            print("Customize")
                        }) {
                            Text("Customize")
                        }
                            Image(systemName: "arrow.right")
                        }
                    }
                    .padding()

                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20){
                            ForEach(getMealsList()) { item in
                                MealRow(meal:item)
                                    .frame(width: bounds.size.width / 2 * 0.7 , height: 210)
//                                    .clipped()
                                    .background(RoundedCorners(color: Color(item.color), tl: 10, tr: 70, bl: 10, br: 10))
                                    
                                }
                            }
                        .padding()
                        
                    }
                   
                }
               
            }
            
            
            

        }
        .padding(.top , 40)
        .background(Color(UIColor(red: 0.95, green: 0.96, blue: 0.97, alpha: 1.00)))
        .edgesIgnoringSafeArea(.all)
       
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


func getAngleMultiplier(bounds: GeometryProxy) -> Double {
    if bounds.size.width > 500 {
        return 80
    } else {
        return 20
    }
}







//MARK:- Meal plan

struct MealRow: View {
    var meal: DietMeals
    var body: some View {
            VStack(spacing: 12) {
                
                ZStack(alignment: Alignment.center){
//                    Circle()
//
//                        .fill(Color(meal.color).opacity(0.5))
//
//                        .frame(width: 80, height: 80)
//                        .padding(.leading,-60)
//                        .padding(.top,-50)
                        
                    Image(meal.imageName)
                        .resizable()
//                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 80, height: 80)
//                        .overlay(Circle().stroke(Color.white,lineWidth:4).shadow(radius: 10))
                        .padding(.leading,-60)
                        .padding(.top, -30)
                }
                .shadow(color: Color(UIColor(red: 0.87, green: 0.89, blue: 0.96, alpha: 1.00)), radius: 10, x: 0, y: 0)
                Text(meal.title)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text(meal.discription)
                    .font(.system(size: 13))
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
    
                HStack(spacing: 5){
                    Text(meal.calories)
                        .font(.system(size: 13))
                        .fontWeight(.medium)
                        
                    Text("kcal")
                        .font(.system(size: 10))
                        .fontWeight(.medium)
                        
                }.foregroundColor(Color.white)
                
            }
            
            
            .padding()
       
    }
}




struct DietMeals: Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var discription: String
    var calories : String
    var color : String
}

func getMealsList() -> [DietMeals] {
    
    return
        [DietMeals(imageName: "img1",
                   title: "Breakfast",
                   discription: "Bread, peanut butter, apple",
                   calories: "562", color: "color1"),
         DietMeals(imageName: "img2",
                    title: "Lunch",
                    discription: "Salamon, Mixed vaggies, Avocado",
                    calories: "602", color: "color2"),
         
         DietMeals(imageName: "img3",
                    title: "Snacks",
                    discription: "Nuts and seeds, Sliced fruit, Legumes",
                    calories: "342", color: "color3"),
         DietMeals(imageName: "img4",
                    title: "Dinner",
                    discription: "Brown rice, cauliflower, beans",
                    calories: "782", color: "color4"),
         
                 ]
}


