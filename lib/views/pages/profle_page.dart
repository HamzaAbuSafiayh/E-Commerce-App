import 'package:ecommerce_app/utils/app_colors.dart';
import 'package:ecommerce_app/view_models/profile_cubit/profile_cubit.dart';
import 'package:ecommerce_app/views/widgets/profile_page_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = ProfileCubit();
        cubit.getUserData('1');
        return cubit;
      },
      child: BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
        if (state is ProfileInitial) {
          BlocProvider.of<ProfileCubit>(context).getUserData('1');
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ProfileLoaded) {
          return Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(state.user.imgUrl),
              ),
              const SizedBox(height: 10),
              Text(
                state.user.name,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                state.user.email,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
              ),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileField(
                    icon: Icon(Icons.person),
                    title: 'Profile',
                  ),
                  ProfileField(
                    icon: Icon(Icons.notifications),
                    title: 'Notifications',
                  ),
                  ProfileField(
                    icon: Icon(Icons.favorite),
                    title: 'Favorites',
                  ),
                  ProfileField(
                    icon: Icon(Icons.shopping_cart),
                    title: 'Cart',
                  ),
                  ProfileField(
                    icon: Icon(Icons.settings),
                    title: 'Settings',
                  ),
                  ProfileField(
                    icon: Icon(Icons.help),
                    title: 'Help',
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Logout'),
                ),
              )
            ],
          );
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      }),
    );
  }
}
