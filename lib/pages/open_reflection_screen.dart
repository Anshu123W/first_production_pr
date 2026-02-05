import 'package:flutter/material.dart';

class M4OpenSharingScreen extends StatefulWidget {
  const M4OpenSharingScreen({Key? key}) : super(key: key);

  @override
  State<M4OpenSharingScreen> createState() => _M4OpenSharingScreenState();
}

class _M4OpenSharingScreenState extends State<M4OpenSharingScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2D2D2D)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/insights');
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Color(0xFF9E9E9E),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
      
        child: Center(
          child: SizedBox(
            
             width: MediaQuery.of(context).size.width * 0.85, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
               
                const Text(textAlign: TextAlign.center,
                  'Is there anything else\non your mind you\'d\nlike to share with us?',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2D2D2D),
                    height: 1.2,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 2),
                
                  const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '     (This is completely optional)',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF9E9E9E),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                    ),
                const SizedBox(height: 30),
                
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFECECEC),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      controller: _textController,
                      maxLines: null,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF2D2D2D),
                        height: 1.5,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type anything here... your hopes, fears, or what \'mental clarity\' means to you. Or, just tap \'Next\'',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: const Color(0xFF2D2D2D).withOpacity(0.4),
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                
                Row(
                  children: [
                    Icon(
                      Icons.lock_outline,
                      size: 16,
                      color: const Color(0xFF9E9E9E).withValues(alpha: 0.6),
                    ),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'Note: This is for your reflection only. Our team will not read individual responses.',
                        style: TextStyle(
                          fontSize: 12,
                          color: const Color(0xFF9E9E9E).withOpacity(0.8),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height:60),
            
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                     Navigator.pushNamed(context,'/insights');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFBDBDBD),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}