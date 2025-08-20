'use client';
import { useEffect } from 'react';

export default function Scroll() {
  useEffect(() => {
    const onScroll = () => {
      // no-op for now; wire behaviors here later
    };
    window.addEventListener('scroll', onScroll);
    return () => window.removeEventListener('scroll', onScroll);
  }, []);
  return null;
}
