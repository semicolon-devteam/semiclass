import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "SemiClass Vibecoding Sandbox",
  description: "Live demo sandbox for SemiClass vibecoding class",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ko">
      <body>{children}</body>
    </html>
  );
}
